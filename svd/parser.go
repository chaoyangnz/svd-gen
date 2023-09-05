package svd

import (
	"encoding/xml"
	"fmt"
	"github.com/chaoyangnz/svdc/svd/schema"
	"sort"
	"strconv"
	"strings"
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
	length := 0
	if p.Registers != nil {
		length = len(p.Registers.Register)
	}

	registers := make([]Register, length)
	for j := 0; j < len(registers); j++ {
		r := p.Registers.Register[j]

		registers[j] = mapRegister(r)
	}

	return Peripheral{
		Name:        p.Name,
		Version:     p.Version,
		Description: p.Description,
		BaseAddress: p.BaseAddress,
		Registers:   registers,
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
		Name:          r.Name,
		DisplayName:   r.DisplayName,
		Description:   r.Description,
		AddressOffset: r.AddressOffset,
		Size:          r.Size,
		DataType:      r.DataType,
		Fields:        fields,
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
			Name:        e.Name,
			Description: e.Description,
			Value:       e.Value,
			IsDefault:   e.IsDefault,
		}
		enums[l] = enum
	}
	return Field{
		Name:             f.Name,
		Description:      f.Description,
		Lsb:              f.Lsb,
		Msb:              f.Msb,
		BitOffset:        f.BitOffset,
		BitWidth:         f.BitWidth,
		BitRange:         f.BitRange,
		EnumeratedValues: enums,
	}
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
	fmt.Printf("[info]"+message, args)
}

func warn(message string, args ...any) {
	fmt.Printf("[warn]"+message, args)
}

func fatal(message string, args ...any) {
	panic(fmt.Sprintf(message, args))
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
	registers := make([]DerivedRegister, 0)
	for j := 0; j < len(p.Registers); j++ {
		r := p.Registers[j]

		name := r.Name
		size := toNumber(device.Width)
		baseAddress := toNumber(p.BaseAddress)
		addressOffset := toNumber(r.AddressOffset)

		if r.Size != "" {
			size = toNumber(r.Size)
		}

		dim := 1
		if r.Dim != "" {
			dim = toNumber(r.Dim)
		}

		for k := 0; k < dim; k++ {
			if dim > 1 {
				name = replace(name, strconv.Itoa(k), "[%s]", "%s")
			}
			registers = append(registers, DerivedRegister{
				Name:          name,
				Description:   r.Description,
				Address:       baseAddress + addressOffset + k*(size/8),
				Size:          size,
				DerivedFields: deriveFields(r, size),
			})
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
			msb = toNumber(pair[0])
			lsb = toNumber(pair[1])
		} else {
			fatal("Unable to find bit range %s.%s", r.Name, f.Name)
		}
		fields = append(fields, DerivedField{
			Name:        f.Name,
			Description: f.Description,
			Lsb:         lsb,
			Msb:         msb,
			Size:        msb - lsb + 1,
			Enums:       f.EnumeratedValues,
		})
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
			Enums: nil,
		})
	}

	for x := 0; x < len(fields); x++ {
		// check first reserved
		if x == 0 {
			if fields[0].Lsb > 0 {
				derivedFields = append(derivedFields, DerivedField{
					Name:  fmt.Sprintf("res%d", res),
					Lsb:   0,
					Msb:   fields[0].Lsb - 1,
					Enums: nil,
				})
				res++
			}
		}

		f := fields[x]
		derivedFields = append(derivedFields, f)
		next := size
		if x < len(fields)-1 {
			next = fields[x+1].Lsb
		}
		// add reserved fields
		if f.Msb+1 < next {
			derivedFields = append(derivedFields, DerivedField{
				Name:  fmt.Sprintf("res%d", res),
				Lsb:   fields[x].Msb + 1,
				Msb:   next - 1,
				Enums: nil,
			})
			res++
		}

	}

	return derivedFields
}
