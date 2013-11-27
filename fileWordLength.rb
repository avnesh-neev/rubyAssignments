#Write a program, which will print only those words which length is greater than 12.

class WordLength
	def textMethod
		wordFile = File.new("textWord.txt", "a+")                    # created file for append data in it
		if wordFile
			puts "enter the data in file"
			words = gets                                               # input data for file
			wordFile.syswrite(words)
		else
			puts "Unable to open file"
		end
		wordFile.close

		readFile = File.new("textWord.txt", "r")
		if readFile
			readFile.each do |line|
				line.scan(/[\w']+/) do |word|                            # find a word in a line using reguler expression
  					lengthOfWord = word.length
					if lengthOfWord >= 12                                  # finding word which length is >=12.
						puts word
					end
				end
			end
		else
			puts "Unable to open file"
		end
		readFile.close
	end
end
wordObj = WordLength.new
wordObj.textMethod
