#!/usr/bin/ruby

$x=rand(10)

def checkGuess(guess)
  puts "Lower" if guess > $x
  puts "Higher" if guess < $x
  puts "Correct!" if guess == $x
end

checkGuess(gets.to_i) while 1
