h = { :first => 19, :second => 21, "third" => 25 }
puts h.inspect

a = h.to_a
puts a.inspect

def a_to_h(a)
	h = {}
	a.each { |key,value| h[key] = value }
	return h;
end

h = a_to_h a

puts h.inspect
