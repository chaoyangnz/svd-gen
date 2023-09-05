package main

import (
	"flag"
	"fmt"
	"github.com/chaoyangnz/svdc/svd"
	"io"
	"os"
	"path"
	"strings"
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

	fmt.Printf("Successfully Opened %s\n", input)
	// defer the closing of our file so that we can parse it later on
	defer file.Close()

	// read our opened file as a byte array.
	bytes, _ := io.ReadAll(file)

	device := svd.Read(bytes)

	data := svd.WriteZig(device)
	//fmt.Printf("%s", data)

	err = os.WriteFile(output, []byte(data), 0644)
	if err != nil {
		fmt.Println(err)
	}
}
