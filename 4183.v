import os { input }

fn main()
{
	n := input("n = ").int()
	m := input("m = ").int()
	mut a := [][]int{len: n + 5, init: []int{len: m + 5}}
	for i := 1; i <= n; i++ {
		for j := 1; j <= m; j++ {
			a[i][j] = input("a[$i][$j] = ").int()
		}
	}
	for i := 0; i <= n + 1; i++ {
		a[i][0] = 252
		a[i][m + 1] = 252
	}
	for i := 0; i <= m + 1; i++ {
		a[0][i] = 252
		a[n + 1][i] = 252
	}
	mut s := 0
	for i := 1; i <= n; i++ {
		for j := 1; j <= m; j++ {
			mut mini := 252
			if mini > a[i + 1][j]
				{	mini = a[i + 1][j]	}
			if mini > a[i - 1][j]
				{	mini = a[i - 1][j]	}
			if mini > a[i][j - 1]
				{	mini = a[i][j - 1]	}
			if mini > a[i][j + 1]
				{	mini = a[i][j + 1]	}
			if mini > a[i][j]
				{	s += mini - a[i][j]	}
		}
	}
	print("$s")
}