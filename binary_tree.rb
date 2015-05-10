require_relative 'Node.rb'


class BinaryTree
	attr_accessor :tree, :array_of_nodes
	
	def build_tree(array)
		array.each do |value|
			insert(value, @tree)	
		end
	end

	def insert(value, node)
		if(node.nil?)
			node = Node.new(value)
		elsif(value > node.value) 
			insert(value, node.right)	
		else if(value < node.value)
			insert(value, node.left)
		end
	end 

end

arr = [1,2,3,4,5,6,7]

tree = BinaryTree.new

tree.build_tree(arr)

