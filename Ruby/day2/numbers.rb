a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

temp = [];

puts("each:");
a.each { |value| 

	temp.push(value)

	if(temp.length > 3)
		puts( temp.join(", ") )
		temp = []
	end
}

puts("each_slice:");
a.each_slice(4) { |value|

	puts(value.join(","))

}
