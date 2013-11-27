=begin
	Write a program that will have three types of musicians which are Guitarist, Vocalist and
drummer. All of them can have a method as playmusic method. There is a music band that will invoke
all the types of musicians and it can have playmusic.
=end

# This class is created for musician type "Guitarist" 
class Guitarist
	def play_music
		puts "I am playing Guitar"
	end
end

# This class is created for musician type "Vocalist"
class Vocalist
	def play_music
		puts "I am playing Vocal"
	end
end

# This class is created for musician type "Drummer"
class Drummer
	def play_music
		puts "I am playing Drum"
	end
end

# This class is created for invoking all the types of musicians
class MusicBand
	guitar = Guitarist.new
	vocal = Vocalist.new
	drum = Drummer.new
	guitar.play_music
	vocal.play_music
	drum.play_music
end
