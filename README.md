# Moon-Curry

Currying and function composition for [Moonscript](http://moonscript.org).

# Examples

	-- currying:
	add = (a, b) -> a + b
	sum = foldl1[add]
	print sum {1, 2, 3, 4, 5}

	-- function composition:
	add = (a, b) -> a + b
	double = (x) -> x * 2
	both = double * add

	print both(5, 4)

