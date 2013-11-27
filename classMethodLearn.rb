=begin
The assignment for Ruby classes and modules is as follows:
Right now, its difficult to visualize all methods that are added by each class Or module in the method lookup chain.
Example:
String class has following ancestors [String, Comparable, Object, Kernel, BasicObject].
Now, its not clear that:
- What are the methods added to String class from Comparable Or Object and so on.
- Whether Comparable is a Class or Module and so on.

To solve the above problem,
Create a method called "ancestor_details" which can be added to any class of Ruby and returns a hash with the following format:
{
0: {
ancestor_type: 'Class',
ancestor_name: 'String',
ancestor_instance_methods: [ Instance methods added by String class only. ],
ancestor_methods: [ Class methods added by String class only. ]
},
1: {
ancestor_type: 'Module',
ancestor_name: 'Comparable',
ancestor_instance_methods: [ Instance methods added by Comparable module only. ],
ancestor_methods: [Module methods added by Comparable module only. ]
},

So on... till BasicObject
}
=end

class RubyObjectInfo
	def ancestor_details
		as = String.new
		detailed_info = as.class.ancestors
		class_length = detailed_info.length
		anc_hash = Hash.new
		count = 0
		while class_length >= 0 do
			detailed_info.each do |anc_name|
				anc_detail_hash = Hash.new
				anc_type = anc_name.class
				anc_instance_methods = anc_name.instance_methods
				anc_methods = anc_name.methods
				anc_detail_hash["ancestor_type"] = anc_type
				anc_detail_hash["ancestor_name"] = anc_name
				anc_detail_hash["ancestor_instance_methods"] = anc_instance_methods
				anc_detail_hash["ancestor_methods"] = anc_methods
				anc_hash[count] =  anc_detail_hash
				puts "\n"
			end
			count += 1
			class_length -= 1
		end
		puts "{"
		anc_hash.each do |hash_value|
			puts hash_value
			puts "\n"
		end
		puts "}"
	end
end

obj = RubyObjectInfo.new
obj.ancestor_details
