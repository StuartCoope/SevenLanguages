// How would you change / to return 0 if the denominator is zero?
Number setSlot(
        "defaultDivide",
        Number getSlot("/")
);

Number setSlot(
        "/",
        method( a,
                if(
			(a == 0),
			return 0
		)
		return self defaultDivide(a)
        )
);

(12 / 0) println()

(12 / 3) println()

