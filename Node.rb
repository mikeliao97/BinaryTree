class Node
	attr_accessor :left, :right, :value, :parent
	
	def initialize(value,  parent = nil,  left = nil, right = nil)
		@value = value
		@left = left	
		@right = right	
		@parent = parent	
	end	
	
	def to_s 
		str = ""
		str += @value.nil? ? "\t@value: Nil\n" : "\t@value: #{@value}\n"
		str += @parent.nil? ? "\t@parent: Nil\n" : "\t@parent: #{@parent.value}\n"
		str += @left.nil? ? "\t@left: Nil\n" : "\t@left: #{@left.value}\n"
		str += @right.nil? ? "\t@right: Nil\n" : "\t@right: #{@right.value}\n"
		return 	str
	end
		


end

