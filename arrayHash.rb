=begin
	     Create a Array class method that can create a hash having 'key' as length of the element and value as an array of all the elements of that length. Make use of for-in loop for the purpose.
Eg: ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] should give result as {3=>["abc", "def", 234], 4=>[1234, "abcd", "mnop", "zZzZ"], 1=>["x", 5]}
=end

class TryHash
	@@arr = Array.new

	#this method for creating array as user input
	def create_array
		puts "how many array value do you want:"
		arr_length = gets.chomp.to_i
		count = 0
		while count < arr_length do
			puts "enter a value for array: "
			val = gets
			@@arr << val
			count +=1
		end
		#puts arr
	end

	#this method is created for hashing according to my problem
	def create_hash
		hash_arr = Hash.new
		@@arr.each do |arr_val|                                          #this block is used for getting array value
			len = arr_val.length-1
			arr_new_val = Array.new
			@@arr.each do |arr_dup|															           #this block is used for getting same length value
				if arr_dup.length-1 == len
					hash_arr[len] = arr_new_val << arr_dup.tr("\n","")         #here that key and value(e.i array) are storing in hash
				end
			end
		end
		puts hash_arr
	end

end

arrayObj = TryHash.new
arrayObj.create_array
arrayObj.create_hash
