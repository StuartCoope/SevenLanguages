//Write a program to add up all the numbers in a two-dimensional array

recursiveSum := method( a,

	sum := 0

	if(
		(a type == "List"),
		for(i, 0, a size() - 1, 1,
			sum = sum + recursiveSum(a at(i))
		)

		return sum
	)

	return a
)

twoD := list(
	list(1,2,3),
	list(4,5,6),
	list(7,8,90)
)

recursiveSum(twoD) println();
