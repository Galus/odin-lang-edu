package main
import "core:fmt"

main :: proc() {
	// asignment statements
	x: int = 123
	x = 123
	y := 123

	a, b := 1, "hello"
	b, a = "bye", 2

	// wonder if this can switcheroo like python
	c := "Super"
	d := "Mario"

	c, d = d, c // swapperoo
	fmt.println(c, d)

	// constant declarations
	conman :: "eric" // const untyped string 
	conman_typed: int : 1337 // a const

	za :: conman_typed + 7 // another one

}
