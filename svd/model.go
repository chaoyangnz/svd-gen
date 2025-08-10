package svd

type Device struct {
	Vendor      string
	Name        string
	Series      string
	Description string
	LicenseText string
	Width       string
	Peripherals []Peripheral
}

type Cpu struct {
	Name       string
	Revision   string
	Endian     string
	MpuPresent bool
	FpuPresent bool
}

type Peripheral struct {
	Name        string
	Version     string
	Description string
	BaseAddress string
	Registers   []Register
	Clusters    []Cluster
	// derived
	DerivedRegisters []DerivedRegister
}

type Register struct {
	Dim           string
	DimIncrement  string
	Name          string
	DisplayName   string
	Description   string
	AddressOffset string
	Size          string
	DataType      string
	Fields        []Field
}

type Cluster struct {
	Name          string
	Dim           string
	DimIncrement  string
	AddressOffset string
	Registers     []Register
}

type DerivedRegister struct {
	// derived
	Name          string
	Description   string
	Address       int
	Size          int
	DerivedFields []DerivedField
	Group         []string
}

type Field struct {
	Dim          string
	DimIncrement string
	Name         string
	Description  string
	// [1:2]
	BitRange string
	// lsb - msb
	Lsb string
	Msb string
	// 1..(2)
	BitOffset        string
	BitWidth         string
	EnumeratedValues []EnumeratedValue
}

type DerivedField struct {
	// derived
	Name        string
	Description string
	Lsb         int
	Msb         int
	Size        int
	Enums       []EnumeratedValue
	DefaultEnum string
}

type EnumeratedValue struct {
	Name        string
	Description string
	Value       string
	IsDefault   bool
}
