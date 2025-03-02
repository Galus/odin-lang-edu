package pack
// when authoring packages, a dir can have many .odin files
// each odin file needs to be of the same package
// a directory cannot contain more than 1 package.
//
// Organizing packages
// core:image/png 
// core:image/tga
// can be subdirs of 
// core:image
//
// Dependency is not implied
// core:foo/bar does not need to import core:foo

import foo "core:fmt"
import "core:os"

main :: proc() {
	foo.println("yaw")

	// all declarations in a package are public by default

	// cant declare private things in the main proc

}

// private stuffs

// cant see outside file
@(private = "file")
my_var: int

// cant see outside package
@(private)
my_other_var: int
