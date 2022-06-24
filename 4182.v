import os {	input }

// ! V does not allow mutable parameters !
// FIX: Return the result instead for now
fn secventa(_n int) int
{
	mut p := 1
	mut n := _n
	for p < n / 10 {
		p *= 10
	}
	for p > 9 {
		if (n / p) % 10 == 2 && (n / (p / 10)) % 10 == 2 {
			mut aux := n % (p / 10)
			n /= p
			n *= p
			n += aux
		}
		p /= 10
	}
	return n
}

fn main()
{
	mut n := input("n = ").int()
	n = secventa(n)
	print("$n")
}