package main
import "core:fmt"

main :: proc() {
	// Comments
	my_integer_variable: int // whatever

	/* we nested
	     but i honestly dont ever wanna use you
	/* shure NOTE: yee
	TODO: wee
	*/
	*/
	//wenested

	// String and character literals
	a: string = "This is a string"
	b: u8 = 'A'
	c: u8 = '\n'
	d: string = "C:\\Windows\\notepad.exe"
	e: string = `C:\Windows\notepad.exe`

	x: int = len("Foo")
	y: int = len(a)

	fmt.println(a)
	fmt.println(b)
	fmt.println(c)
	fmt.println(d)
	fmt.println(e)
	fmt.println(x)
	fmt.println(y)

	// numbers  & variable declarations
	x1: int
	x = 1.0

	apple, barn := 11, 22 // w0t

	x1 = 55
	x1 = 20 // redeclare

	f, g: int
	f, g = 20, 30 // weee


}
