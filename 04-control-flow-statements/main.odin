#+feature dynamic-literals
package main

import "core:c"
import "core:fmt"
import "core:hash"
import "core:strings"


main :: proc() {
	using fmt
	println("Hellope!")

	// for
	for i := 0; i < 10; i += 1 {
		println(i)
	}

	println()
	i := 3
	for i > 0 { 	// formatter is nuking for ; i > 0 ; { 
		println(i)
		i -= 1
	}

	println()
	for i := 10; i > 0; i -= 1 do println(i)

	// range loopers
	println()
	for i in 0 ..< 3 do println("r: ", i)
	println()
	for i in 0 ..= 3 do println("e: ", i)

	// iterable types
	no := "Hello moto"
	println()
	some_array := [4]int{1, 2, 3, 4}
	for c in no do println("c:", c)

	arr := [3]int{1, 3, 4}
	println()
	for element in arr do println("element:", element)

	slice := []u8{'p', 'i', 'z', 'z', 'a'}
	println()
	for c in slice do println(c - 'a')

	intz := []int{1, 3, 3, 7}
	println()
	for i in intz do println(i)

	dynamic_arr := [dynamic]int{1, 3}
	defer delete(dynamic_arr)
	for v in dynamic_arr {
		println(v)
	}

	append(&dynamic_arr, 3)
	f := pop(&dynamic_arr)
	println("f:", f)
	append(&dynamic_arr, 3, 7)
	println("dynamic_arr: ", dynamic_arr)
	for v in dynamic_arr {
		println(v)
	}

	// problematic if you happen to 
	// string := "some string" it overwrites the keyword
	// vvvv try it, i dare ya  vvvv
	// string := "h"
	some_map := map[string]int {
		"A" = 1,
		"c" = 0,
		"b" = 0,
	}
	defer delete(some_map)
	for key in some_map do println(key)


	//second index yolo
	println("second index")
	some_string := "fo sho'"
	for character, index in some_string {
		fmt.println(index, character)
	}
	for value, index in some_array {
		fmt.println(index, value)
	}
	some_slice := []int{1, 2, 3}
	for value, index in some_slice {
		fmt.println(index, value)
	}

	some_dynamic_array := [dynamic]int{1, 2, 3}
	for value, index in some_dynamic_array {
		fmt.println(value, index)
	}
	for key, value in some_map {
		fmt.println(key, value)
	}

	// :( , all of these are copies... cant be written to.
	// we get runes encoded as UTF-8 for a string's characters

	str: string = "Some text"
	for char in str {
		assert(type_of(char) == rune)
		println(char)
	}

	// iterating by reference instead of value/copy
	println("b4hax:", some_array)
	for &value in some_array {
		value = 0 // get rekt bruh all ur base are belong to us
	}
	println("rekt:", some_array)

	println("uh-oh:", some_dynamic_array)
	for &value, index in some_dynamic_array {
		value = 0
	}
	println("pwnt!:", some_dynamic_array)

	// maps can be iterated by reference but their keys cannot, map keys are immutable


}
