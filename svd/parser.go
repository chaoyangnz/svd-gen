package svd

import (
	"encoding/xml"
	"fmt"
	"sort"
	"strconv"
	"strings"

	"github.com/chaoyangnz/svd-gen/svd/schema"
)

func Parse(svd []byte) Device {

	var dev schema.Device
	err := xml.Unmarshal(svd, &dev)
	if err != nil {
		panic(err)
	}

	device := mapDevice(dev)
	derive(device)

	return device
}

func mapDevice(dev schema.Device) Device {

	length := 0
	if dev.Peripherals != nil {
		length = len(dev.Peripherals.Peripheral)
	}

	peripherals := make([]Peripheral, length)
	for i := 0; i < len(peripherals); i++ {
		p := dev.Peripherals.Peripheral[i]

		peripherals[i] = mapPeripheral(p)
	}
	return Device{
		Vendor:      dev.Vendor,
		Name:        dev.Name,
		Series:      dev.Series,
		Description: dev.Description,
		LicenseText: dev.LicenseText,
		Width:       dev.Width,
		Peripherals: peripherals,
	}
}

func mapPeripheral(p *schema.PeripheralType) Peripheral {
	registerLength := 0
	clusterLength := 0
	if p.Registers != nil {
		registerLength = len(p.Registers.Register)
		clusterLength = len(p.Registers.Cluster)
	}

	registers := make([]Register, registerLength)
	for j := 0; j < len(registers); j++ {
		r := p.Registers.Register[j]

		registers[j] = mapRegister(r)
	}

	clusters := make([]Cluster, clusterLength)
	for j := 0; j < len(clusters); j++ {
		c := p.Registers.Cluster[j]

		clusters[j] = mapCluster(c)
	}

	return Peripheral{
		Name:        p.Name,
		Version:     p.Version,
		Description: p.Description,
		BaseAddress: p.BaseAddress,
		Registers:   registers,
		Clusters:    clusters,
	}
}

func mapRegister(r *schema.RegisterType) Register {
	length := 0
	if r.Fields != nil {
		length = len(r.Fields.Field)
	}

	fields := make([]Field, length)
	for k := 0; k < len(fields); k++ {
		f := r.Fields.Field[k]

		fields[k] = mapField(f)
	}

	return Register{
		Dim:           r.Dim,
		DimIncrement:  r.DimIncrement,
		Name:          validName(r.Name),
		DisplayName:   r.DisplayName,
		Description:   r.Description,
		AddressOffset: r.AddressOffset,
		Size:          r.Size,
		DataType:      r.DataType,
		Fields:        fields,
	}
}

func mapCluster(c *schema.ClusterType) Cluster {
	length := 0
	if c.Register != nil {
		length = len(c.Register)
	}

	registers := make([]Register, length)
	for k := 0; k < len(registers); k++ {
		r := c.Register[k]

		registers[k] = mapRegister(r)
	}

	return Cluster{
		Name:          c.Name,
		Dim:           c.Dim,
		DimIncrement:  c.DimIncrement,
		AddressOffset: c.AddressOffset,
		Registers:     registers,
	}
}

func mapField(f *schema.FieldType) Field {
	length := 0
	if f.EnumeratedValues != nil && len(f.EnumeratedValues) > 0 {
		length = len(f.EnumeratedValues[0].EnumeratedValue)
	}

	enums := make([]EnumeratedValue, length)
	for l := 0; l < len(enums); l++ {
		e := f.EnumeratedValues[0].EnumeratedValue[l]
		enum := EnumeratedValue{
			Name:        validName(e.Name),
			Description: e.Description,
			Value:       e.Value,
			IsDefault:   e.IsDefault,
		}
		enums[l] = enum
	}
	return Field{
		Dim:              f.Dim,
		DimIncrement:     f.DimIncrement,
		Name:             validName(f.Name),
		Description:      f.Description,
		Lsb:              f.Lsb,
		Msb:              f.Msb,
		BitOffset:        f.BitOffset,
		BitWidth:         f.BitWidth,
		BitRange:         f.BitRange,
		EnumeratedValues: enums,
	}
}

func validName(name string) string {
	if name[0] >= '0' && name[0] <= '9' {
		return "@\"" + name + "\""
	}
	return name
}

func toNumber(s string) int {
	if strings.HasPrefix(s, "0x") {
		n, err := strconv.ParseInt(s[2:], 16, 64)
		if err != nil {
			warn("unable to covert hex %s", s)
		}
		return int(n)
	}
	if strings.HasSuffix(s, "0b") {
		n, err := strconv.ParseInt(s[2:], 2, 64)
		if err != nil {
			warn("unable to covert binary %s", s)
		}
		return int(n)
	}
	n, err := strconv.Atoi(s)
	if err != nil {
		warn("unable to covert number %s", s)
	}
	return n
}

func info(message string, args ...any) {
	fmt.Printf("[info]"+message, args...)
}

func warn(message string, args ...any) {
	fmt.Printf("[warn]"+message, args...)
}

func fatal(message string, args ...any) {
	panic(fmt.Sprintf("[fatal]"+message, args...))
}

func assert(exp bool, message string, args ...any) {
	if !exp {
		panic(fmt.Sprintf("assert fails: "+message, args...))
	}
}

func derive(device Device) {
	for i := 0; i < len(device.Peripherals); i++ {
		p := &device.Peripherals[i]

		p.DerivedRegisters = deriveRegisters(device, *p)
	}
}

func replace(s string, to string, from ...string) string {
	var str = s
	for i := 0; i < len(from); i++ {
		str = strings.ReplaceAll(str, from[i], to)
	}
	return str
}

func deriveRegisters(device Device, p Peripheral) []DerivedRegister {
	size := toNumber(device.Width)
	baseAddress := toNumber(p.BaseAddress)

	registers := make([]DerivedRegister, 0)
	for j := 0; j < len(p.Registers); j++ {
		r := p.Registers[j]

		name := r.Name
		description := r.Description
		addressOffset := toNumber(r.AddressOffset)

		if r.Size != "" {
			size = toNumber(r.Size)
		}

		dim := 1
		if r.Dim != "" {
			dim = toNumber(r.Dim)
		}

		if dim == 1 {
			registers = append(registers, DerivedRegister{
				Name:          name,
				Description:   description,
				Address:       baseAddress + addressOffset,
				Size:          size,
				DerivedFields: deriveFields(r, size),
				Group:         nil,
			})
		} else {
			names := make([]string, dim)
			// add separate registers
			for k := 0; k < dim; k++ {
				name := replace(r.Name, strconv.Itoa(k), "[%s]", "%s")
				description = replace(r.Description, strconv.Itoa(k), "[%s]", "%s")
				names[k] = name
				registers = append(registers, DerivedRegister{
					Name:          name,
					Description:   description,
					Address:       baseAddress + addressOffset + k*(size/8),
					Size:          size,
					DerivedFields: deriveFields(r, size),
					Group:         nil,
				})
			}
			// add a group register
			registers = append(registers, DerivedRegister{
				Name:          replace(r.Name, "", "[%s]", "%s"),
				Description:   replace(r.Description, "N", "[%s]", "%s"),
				Address:       baseAddress + addressOffset,
				Size:          size,
				DerivedFields: deriveFields(r, size),
				Group:         names,
			})
		}

	}
	// FIXME, AVOID DUPLICATE
	for k := 0; k < len(p.Clusters); k++ {
		c := p.Clusters[k]
		clusterDim := 1
		if c.Dim != "" {
			clusterDim = toNumber(c.Dim)
		}
		clusterName := c.Name
		clusterAddressOffset := toNumber(c.AddressOffset)
		for kk := 0; kk < clusterDim; kk++ {
			if clusterDim > 1 {
				clusterName = replace(c.Name, strconv.Itoa(kk), "[%s]", "%s")
				clusterAddressOffset = toNumber(c.AddressOffset) + clusterDim*toNumber(c.DimIncrement)
			}

			for j := 0; j < len(c.Registers); j++ {
				r := c.Registers[j]

				name := r.Name
				description := r.Description
				addressOffset := toNumber(r.AddressOffset)

				if r.Size != "" {
					size = toNumber(r.Size)
				}

				dim := 1
				if r.Dim != "" {
					dim = toNumber(r.Dim)
				}

				if dim == 1 {
					registers = append(registers, DerivedRegister{
						Name:          clusterName + "_" + name,
						Description:   description,
						Address:       baseAddress + clusterAddressOffset + addressOffset,
						Size:          size,
						DerivedFields: deriveFields(r, size),
						Group:         nil,
					})
				} else {
					names := make([]string, dim)
					// add separate registers
					for k := 0; k < dim; k++ {
						name := replace(r.Name, strconv.Itoa(k), "[%s]", "%s")
						description = replace(r.Description, strconv.Itoa(k), "[%s]", "%s")
						names[k] = clusterName + "_" + name
						registers = append(registers, DerivedRegister{
							Name:          clusterName + "_" + name,
							Description:   description,
							Address:       baseAddress + clusterAddressOffset + addressOffset + k*(size/8),
							Size:          size,
							DerivedFields: deriveFields(r, size),
							Group:         nil,
						})
					}
					// add a group register
					registers = append(registers, DerivedRegister{
						Name:          clusterName + "_" + replace(r.Name, "", "[%s]", "%s"),
						Description:   replace(r.Description, "N", "[%s]", "%s"),
						Address:       baseAddress + clusterAddressOffset + addressOffset,
						Size:          size,
						DerivedFields: deriveFields(r, size),
						Group:         names,
					})
				}
			}
		}

	}
	return registers
}

func deriveFields(r Register, size int) []DerivedField {

	// normalise
	fields := make([]DerivedField, 0)
	for x := 0; x < len(r.Fields); x++ {
		f := r.Fields[x]
		var lsb int
		var msb int
		if f.Msb != "" && f.Lsb != "" {
			lsb = toNumber(f.Lsb)
			msb = toNumber(f.Msb)
		} else if f.BitOffset != "" && f.BitWidth != "" {
			lsb = toNumber(f.BitOffset)
			msb = toNumber(f.BitOffset) + toNumber(f.BitWidth) - 1
		} else if f.BitRange != "" {
			pair := strings.Split(f.BitRange[1:len(f.BitRange)-1], ":")
			sort.Slice(pair, func(i int, j int) bool { return pair[i] < pair[j] })
			lsb = toNumber(pair[0])
			msb = toNumber(pair[1])
		} else {
			fatal("Unable to find bit range %s.%s", r.Name, f.Name)
		}
		if lsb > msb {
			lsb, msb = msb, lsb
		}
		//assert(lsb <= msb, "%s.%s lsb (%d) is greater than msb (%d)", r.Name, f.Name, lsb, msb)
		assert(msb-lsb+1 > 0, "%s.%s size is 0 or negative", r.Name, f.Name, lsb, msb)

		dim := 1
		if f.Dim != "" {
			dim = toNumber(f.Dim)
		}
		name := f.Name
		description := f.Description
		size := msb - lsb + 1

		for k := 0; k < dim; k++ {
			if dim > 1 {
				name = replace(f.Name, strconv.Itoa(k), "[%s]", "%s")
				description = replace(f.Description, strconv.Itoa(k), "[%s]", "%s")
			}

			var defaultEnum = ""
			for _, enum := range f.EnumeratedValues {
				if enum.IsDefault {
					defaultEnum = enum.Name
					break
				}
			}

			fields = append(fields, DerivedField{
				Name:        name,
				Description: description,
				Lsb:         lsb + size*k,
				Msb:         msb + size*k,
				Size:        size,
				Enums:       f.EnumeratedValues,
				DefaultEnum: defaultEnum,
			})
		}
	}

	sort.Slice(fields, func(i, j int) bool {
		return fields[i].Lsb < fields[j].Lsb
	})

	// populate and add reserved fields
	derivedFields := make([]DerivedField, 0)
	res := 0
	if len(fields) == 0 {
		derivedFields = append(derivedFields, DerivedField{
			Name:  "raw",
			Lsb:   0,
			Msb:   size - 1,
			Size:  size,
			Enums: nil,
		})
	} else {
		offset := 0
		for x := 0; x < len(fields); x++ {
			f := fields[x]
			if f.Lsb > offset {
				derivedFields = append(derivedFields, DerivedField{
					Name:  fmt.Sprintf("res%d", res),
					Lsb:   offset,
					Msb:   f.Lsb - 1,
					Size:  f.Lsb - offset,
					Enums: nil,
				})
				res++
			}

			derivedFields = append(derivedFields, f)
			offset = f.Msb + 1
		}
		// check last remaining reserved
		if offset < size {
			derivedFields = append(derivedFields, DerivedField{
				Name:  fmt.Sprintf("res%d", res),
				Lsb:   offset,
				Msb:   size - 1,
				Size:  size - offset,
				Enums: nil,
			})
			res++
		}
	}

	return derivedFields
}
