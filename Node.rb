class Node
	attr_accessor :left, :right, :value, :parent
	
	def initialize(value, left = nil, right = nil, parent = nil)
		@value = value
		@left = left	
		@right = right	
		@parent = parent	
	end	
	
	

end

