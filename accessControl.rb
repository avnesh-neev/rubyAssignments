=begin
Ruby Access Control

1. create a class that will contain the public private and protected methods and access those methods 
=end


class AccessControl
	def public_methods
		puts "this is public method"
	end

	private
	def private_methods
		puts "this is private method"
	end

	protected
	def protect_methods
		puts "this is protected method"
	end

	public
	def use_private_methods
		private_methods
	end
	
end


class MethodsInOther < AccessControl
	def base_class_method
		protect_methods
		private_methods
	end
end

obj = AccessControl.new
obj.public_methods
#obj.private_method
#obj.protect_method
obj.use_private_methods

obj_other = MethodsInOther.new
obj_other.base_class_method
