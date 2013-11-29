module LearnModule
	def area(width, height)
		return width*height
	end

	def perimeter(width, height)
		return width+height
	end

	module_function :area
	module_function :perimeter
end
