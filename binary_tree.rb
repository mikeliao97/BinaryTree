

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
		
		return nil #if it does not find a value:
			
	end

	def depth_first_search(target)
		node = @tree
		
		queue = []
		queue << node
		queue << node
		
		visited = []
		visited << node
		
		while(queue.empty? == false)
			current_node = queue.pop

			if(current_node.value == target)
				return current_node
				puts "I am done bro"
			end


			#if node is not included in the visited
			#check the left and put it in the stack
			if(current_node.left != nil)
				if visited.include?(current_node.left) == false
					queue << current_node.left
					visited << current_node.left
				end
								 	 
			else
				if(current_node.right != nil)
					if visited.include?(current_node.right) == false
						queue << current_node.right
						queue << current_node.right
					end 						
				end
			end
				
		end

		return nil
	end
	

	def dfs_rec(target, current_node = @tree)
		if(current_node.value == target)
			return current_node
		end 

		unless current_node.left == nil
			return dfs_rec(target, current_node.left)
		end

		unless current_node.right == nil
			return dfs_rec(target, current_node.right)
		end
	

	end	
		



end


driver = BinaryTree.new
 
driver.build_tree([100, 0, 1000, 3232, 32, 2, 1])


puts "*************************"
puts driver.dfs_rec(1)
puts nil

=begin
driver.array_of_nodes.each do |node|
	puts node
	puts ""

end


=end
