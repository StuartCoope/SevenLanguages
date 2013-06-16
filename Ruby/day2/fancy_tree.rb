class FancyTree
	attr_accessor :children, :node_name
	
	def initialize(data={})

		children = [];
		name = 'fault';

		if(data.size() == 1)
			#We only have one node on this level, it is the title
			name, descendents = data.first
			puts("Found: " + name)

			descendents.each{ |value|
				puts("each: ", value)
                                children.push(FancyTree.new(value))
                        }
		else
			puts("Error: " + data.size().to_s + ' ' + data.join(','))
		end

		@children = children
		@node_name = name
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end
end

ruby_tree = FancyTree.new( "grandpa" => { "dad" => { "child1" => {}, "child2" => {} }, "uncle" => { "child3" => {}, "child4" => {} } } )
=begin
puts "visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all{|node| puts node.node_name}
=end
