

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
	
	def insert(value, node)
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
	
	def breadth_first_search(target)	
		#get the original serach node, which is @tree
		node = @tree
		
		#the queue array
		queue = []
		queue << node		
		
		while(queue.empty? == false)
			#search the node, if it 
			current_node = queue.shift

			if(current_node.value == target)
				return current_node
				puts "I am done bro!"
			end
			#check the left side
			if(current_node.left != nil)
				queue << current_node.left
			end
			
			#check the right  side
			if(current_node.right != nil)
				queue << current_node.right
			end
				
		end
		
		return nil #if it does not find a value
			
	end

	def depth_first_search(target)

	end


	def dfs_rec(target)


	end	

end


driver = BinaryTree.new
 
driver.build_tree([100, 0, 1000, 3232, 32, 2, 1])

puts driver.tree
puts driver.tree.left
puts driver.tree.right

puts "**************************"
puts driver.breadth_first_search(43)


=begin
driver.array_of_nodes.each do |node|
	puts node
	puts ""

end


=end
