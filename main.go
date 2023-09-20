package main

import (
	"flag"
	"fmt"
	"github.com/chaoyangnz/svd-gen/svd"
	"os"
	"path"
	"strings"
)

func main() {
	var input string
	var output string
	var language string
	var initialiseFields bool

	flag.StringVar(&input, "i", "", "input file *.svd")
	flag.StringVar(&output, "o", "", "output file")
	flag.StringVar(&language, "l", "Zig", "output language: Zig, Rust, C")
	flag.BoolVar(&initialiseFields, "initialise-fields", true, "initialise fields")
	flag.Parse()

	if input == "" || output == "" {
		fmt.Printf("Usage: svd-gen -i <input_file> -o <output_file> -l <lang> \n")
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
			fmt.Printf("Usage: svd-gen -i <input_file> -o <output_file> -l <lang> \n")
			return
		}
	}

	// Open our file
	inputFile, err := os.Open(input)
	defer inputFile.Close()
	// if we os.Open returns an error then handle it
	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Printf("Succeeded to open %s\n", input)

	outputFile, err := os.OpenFile(output, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0644)
	defer outputFile.Close()

	if err != nil {
		fmt.Println(err)
		return
	}

	svd.Convert(inputFile, outputFile, svd.Options{
		InitialiseFields: initialiseFields,
	})

	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Printf("Succeeded to write %s\n", output)
}
