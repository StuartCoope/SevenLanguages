Car := Object clone
ka := Car clone

# ::= creates the slot and creates a setter for it automatically
ka numberOfWheels ::= 4

ka slotNames println
# list(numberOfWheels, setNumberOfWheels) 

ka numberOfWheels println
# 4

ka setNumberOfWheels(3)

ka numberOfWheels println
