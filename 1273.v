import os { input }

fn main()
{
	a := input("a = ").int()
	b := input("b = ").int()
	s := (a + b) % 10
	print("($a + $b) % 10 = $s")
}