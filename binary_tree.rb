

require_relative 'Node.rb'


class BinaryTree
	attr_accessor :tree, :array_of_nodes
		
	def build_tree(array)
		@array_of_nodes = []
		@tree = Node.new(array[0]) #initialize the first element of the array as a node

		@array_of_nodes << array.shift

		array.each do |value|
			insert(value, @tree)	
		end
	end
	
	def insert(value, node = @tree)
		unless value == node.value
	
				if value < node.value
					if node.left.nil? 
						node.left = Node.new(value, node, nil, nil) 
						@array_of_nodes << node.left
					else 
						insert(value, node.left)
					end

				else
					if node.right.nil?
						node.right = Node.new(value, node, nil, nil) 
						@array_of_nodes << node.right
					else
						insert(value, node.right)
					end
				end

		end
	end

	def print_tree
		
		

	end
end



driver = BinaryTree.new
 
driver.build_tree([100, 0, 1000, 3232, 32, 2, 1])

puts driver.tree

driver.array_of_nodes.each do |node|
	puts node
	puts ""

end









