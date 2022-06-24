import os { input }

fn main()
{
	a := input("a = ").int()
	b := input("b = ").int()
	mut s := a + b
	println("$a + $b = $s")
	s = a - b
	println("$a - $b = $s")
	s = a * b
	println("$a * $b = $s")
	s = a / b
	print("$a / $b = $s")
}