package svd

import (
	_ "embed"
	"fmt"
	"io"
	"strings"
	"text/template"
)

//go:embed svd.zig.gotmpl
var templateFile []byte

func Convert(r io.Reader, w io.Writer) error {
	bytes, err := io.ReadAll(r)

	if err != nil {
		return err
	}

	device := Parse(bytes)
	return Write(w, device)
}

func Write(writer io.Writer, device Device) error {
	tmpl, err := template.New("svd.zig.gotmpl").Funcs(template.FuncMap{
		"escape": func(identifier string) string {
			if identifier == "if" || strings.Contains(identifier, "-") {
				return fmt.Sprintf("@\"%s\"", identifier)
			}
			return identifier
		},
		"line": func(c string) string {
			return strings.ReplaceAll(strings.ReplaceAll(c, "\n", ""), "  ", "")
		},
		"join": func(s []string, sep string) string {
			return strings.Join(s, sep)
		},
	}).Parse(string(templateFile))

	err = tmpl.Execute(writer, device)

	return err
}
