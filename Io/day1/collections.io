numbers := list(1, 2, 13, 34)

("Numbers: " .. numbers) println

("Average: " .. numbers average) println
("Sum: " .. numbers sum) println

numbers append(4)

("Numbers: " .. numbers) println

numbers prepend(0)

("Numbers: " .. numbers) println

("Is empty: " .. numbers isEmpty) println
