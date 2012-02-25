export foldl1, foldl

debug.setmetatable ->, {
	__call: (...) => func ...
	__mul: (self, g) -> (...) -> self g ...
	__index: (x) => (...) -> self x, ...
}

map = (f, xs) -> [f(x) for x in *xs]

foldl1 = (f, xs) ->
	acc = xs[1]
	for i = 2, #xs
		acc = f acc, xs[i]
	acc

foldl = (f, acc, xs) ->
	for i = 1, #xs
		acc = f acc, xs[i]
	acc
