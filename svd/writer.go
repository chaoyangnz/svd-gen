package svd

import (
	"fmt"
	"strings"
)

func WriteZig(device Device) string {

	return fmt.Sprintf(`
const mmio = @import("./mmio.zig");

pub const devices = struct {
  pub const %s = struct {
    pub const peripherals = struct {
%s
    };
  };
};`, escape(device.Name), writePeripherals(device.Peripherals))
}

func writePeripherals(peripherals []Peripheral) string {

	var s = ""
	for i := 0; i < len(peripherals); i++ {
		peripheral := peripherals[i]
		comment := ""
		if peripheral.Description != "" {
			comment = fmt.Sprintf("/// %s", prettyComment(peripheral.Description))
		}
		s += fmt.Sprintf(`
      %s
      pub const %s = struct {
%s
      };
`, comment, escape(peripheral.Name), writeRegisters(peripheral.DerivedRegisters))
	}

	return s
}

func writeRegisters(registers []DerivedRegister) string {

	var s = ""
	for i := 0; i < len(registers); i++ {
		register := registers[i]
		comment := ""
		if register.Description != "" {
			comment = fmt.Sprintf("/// %s", prettyComment(register.Description))
		}
		s += fmt.Sprintf(`
        %s
        pub const %s = @as(*volatile mmio.Mmio(packed struct(u%d) {
%s
        }), @ptrFromInt(0x%x));
`, comment, escape(register.Name), register.Size, writeFields(register), register.Address)
	}

	return s
}

func writeFields(register DerivedRegister) string {
	var s = ""
	for i := 0; i < len(register.DerivedFields); i++ {
		field := register.DerivedFields[i]
		comment := prettyComment(field.Description)
		t := fmt.Sprintf("u%d", field.Size)
		if field.Enums != nil {
			values := make([]string, len(field.Enums))
			for j := 0; j < len(field.Enums); j++ {
				values[j] = fmt.Sprintf("%s = %d,", field.Enums[j].Name, field.Enums[j].Value)
			}
			t = fmt.Sprintf("enum(%d) {%s}", field.Size, strings.Join(values, ","))
		}
		s += fmt.Sprintf(`
          /// [%d:%d] %s
          %s: %s,
`, field.Lsb, field.Msb, comment, escape(field.Name), t)
	}

	return s
}

func prettyComment(c string) string {
	return strings.ReplaceAll(strings.ReplaceAll(c, "\n", ""), "  ", "")
}

func escape(identifier string) string {
	if identifier == "if" || strings.Contains(identifier, "-") {
		return fmt.Sprintf("@\"%s\"", identifier)
	}
	return identifier
}
