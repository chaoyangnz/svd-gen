package main

import (
	"flag"
	"fmt"
	"github.com/chaoyangnz/svdc/svd"
	"io"
	"os"
	"path"
	"strings"
	"text/template"
)

func main() {
	var input string
	var output string
	var language string

	flag.StringVar(&input, "i", "", "input file *.svd")
	flag.StringVar(&output, "o", "", "output file")
	flag.StringVar(&language, "l", "", "output language: Zig, Rust, C")
	flag.Parse()

	if input == "" || output == "" {
		fmt.Printf("Usage: svdc -i <input_file> -o <output_file> -l <lang> \n")
		return
	}

	if language == "" {
		// infer language
		extension := strings.ToLower(path.Ext(output))
		if extension == "zig" {
			language = "Zig"
		} else if extension == "rs" {
			language = "Rust"
		} else if extension == "c" {
			language = "C"
		} else {
			fmt.Printf("Usage: svdc -i <input_file> -o <output_file> -l <lang> \n")
		}
	}

	// Open our file
	file, err := os.Open(input)
	// if we os.Open returns an error then handle it
	if err != nil {
		fmt.Println(err)
	}

	fmt.Printf("Succeeded to opened %s\n", input)
	// defer the closing of our file so that we can parse it later on
	defer file.Close()

	// read our opened file as a byte array.
	bytes, _ := io.ReadAll(file)

	device := svd.Parse(bytes)

	f, err := os.OpenFile(output, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0644)
	defer f.Close()

	if err != nil {
		fmt.Println(err)
		return
	}

	//content := svd.WriteZig(device)
	//err = os.WriteFile(output, []byte(content), 0644)
	//fmt.Printf("%s", data)

	tmpl, err := template.New("svd.zig.tmpl").Funcs(template.FuncMap{
		"escape": func(identifier string) string {
			if identifier == "if" || strings.Contains(identifier, "-") {
				return fmt.Sprintf("@\"%s\"", identifier)
			}
			return identifier
		},
		"line": func(c string) string {
			return strings.ReplaceAll(strings.ReplaceAll(c, "\n", ""), "  ", "")
		},
	}).ParseFiles("/home/chao.yang/Work/svdc/svd/svd.zig.tmpl")

	err = tmpl.Execute(f, device)

	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Printf("Succeeded to write %s\n", output)
}
