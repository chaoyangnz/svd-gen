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
`, comment, escape(peripheral.Name), writeRegisters(peripheral.registers))
	}

	return s
}

func writeRegisters(registers []DerivedRegister) string {

	var s = ""
	for i := 0; i < len(registers); i++ {
		register := registers[i]
		comment := ""
		if register.description != "" {
			comment = fmt.Sprintf("/// %s", prettyComment(register.description))
		}
		s += fmt.Sprintf(`
        %s
        pub const %s = @as(*volatile mmio.Mmio(packed struct(u%d) {
%s
        }), @ptrFromInt(0x%x));
`, comment, escape(register.name), register.size, writeFields(register), register.address)
	}

	return s
}

func writeFields(register DerivedRegister) string {
	var s = ""
	for i := 0; i < len(register.fields); i++ {
		field := register.fields[i]
		comment := prettyComment(field.description)
		s += fmt.Sprintf(`
          /// [%d:%d] %s
          %s: u%d,
`, field.lsb, field.msb, comment, escape(field.name), field.msb-field.lsb+1)
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
