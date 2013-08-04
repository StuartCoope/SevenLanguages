
// Write a program to find the nth Fibonacci number, fib(1) is 1, fib(4) is 3

fib := method( nth,

	nLess1 := 1;
	nLess2 := 1;

	if(
		(nth == 1) or (nth == 2), 
		return(1);
	)

	nLess0 := 0;

	for(i,3,nth,1,
		nLess0 = nLess1 + nLess2;

		nLess2 = nLess1;
		nLess1 = nLess0;

	)

	return nLess0

)

fib(1) println();
fib(2) println();
fib(3) println();
fib(4) println();
fib(5) println();
