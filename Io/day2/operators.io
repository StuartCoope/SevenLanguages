"true is an object, it has slots:" println
true slotNames println

"We can add another operator to the table, and then implement its method on true and false" println
OperatorTable addOperator("xor", 11)

true xor := method(bool, if(bool, false, true))

false xor := method(bool, if(bool, true, false))

"now we can evaluate it:" println
(true xor true) println
(true xor false) println
