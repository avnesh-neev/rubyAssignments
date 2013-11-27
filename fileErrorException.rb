=begin
	"You all create a file and insert some words(min 10 lines which contains alpha-numeric values) using user input. 
	Then the data will save in the file and output will show like data is saved in that 'file-name'. 
	After that u will take an input from the user and find the input in the file using regular expression and the output will be when data found it should tell the user the line no. + word no. in that line. 
	If it not found any input it raise an exception and you will handle that exception and simply print that input data not found. 
	After that traverse each line and find (using regular expression) which line contains numeric values and print the line and only numbers."
=end


class LearnFileErrorExcep
	def text_file
		wordFile = File.new("file_error_exept.txt", "a+")                    # created file for append data in it
		if wordFile
			puts "enter the data in file"
			words = gets                                               # input data for file
			wordFile.syswrite(words)
		else
			puts "Unable to open file"
		end
		wordFile.close

		readFile = File.new("file_error_exept.txt", "r")
		if readFile
			puts "please! enter the word which you want to find"
			word_for_find = gets
			word_for_find = word_for_find.tr("\n","")
			line_no = 1
			readFile.each do |line|
				word_no = 1
				line.scan(/[\w']+/) do |word|                            # find a word in a line using reguler expression
  				if word_for_find == word
						puts word << " is found in line " << line_no.to_s << " and word no is " << word_no.to_s
					end
				word_no += 1	
				end
				line_no += 1
			end
		else
			puts "Unable to open file"
		end
		readFile.close
	end
end

file_obj = LearnFileErrorExcep.new
file_obj.text_file
