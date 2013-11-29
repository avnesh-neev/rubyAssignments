=begin
Modules and Mixins

1. create a module with functions that will gives the area and perimeter of the rectangle.
2. create a class that initialize the width and height of the rectangle and use the functions that are in the module to get area and permiter and print.
3. use require and include both types for using the module functions.
4. module and class both are in seperate files when your using require
=end

require "./moduleLearn"

module InclTest
	def inc_area(width, height)
		return width*height
	end

	def inc_perimeter(width, height)
		return width+height
	end
end


class ModClass
	include InclTest                          #adding module "IncTest" by include keyword

	def initialize(width, height)
		@width = width
		@height = height
	end

	def display_result
		#using require keyword for displaying data
		puts LearnModule.area(@width, @height)
		puts LearnModule.perimeter(@width, @height)

		#using include keyword for displaying data
		puts inc_area(@width, @height)
		puts inc_perimeter(@width, @height)
	end
end

ModClass.new(12, 10).display_result



