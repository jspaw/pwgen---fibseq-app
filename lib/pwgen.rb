

class Pwgen
	
	def initialize (num, len)
		@length = len
		@num_passwords = num
		create_pw_a
		pw_characters(0)
		fill_pw_a
	end			
	#prompts user on how many passwords they want to generate
	#def get_num_pws
	#	puts "Please enter the number of passwords you wish to generate"
	#	@num_passwords = gets
	#end
	
	#method used for testing - passes back whatever the user entered for get_num_pws
	#def num_pw_test
	#	@num_passwords.to_i
	#end
	
	#prompts user on how long they want each password to be
#	def get_length
#		puts "Please enter the length of the password you wish to generate"
		#@length = gets
	#end
	
	#method used for testing - passes back whatever the user entered for get_length
	#def get_length_test
	#	@length.to_i
	#end

	#initalizes a dynamic array in which all passwords are to be stored
	def create_pw_a
		@pw_array = Array.new
	end

	#method for creating a single random password - initalizes a dynamic array then uses ruby's random function to pick a random value in the array of possible password characters.  returns the array in a string
	def create_one_pw
		@one_pw = Array.new
		@char_size = @chars.size
		@length.to_i.times { @one_pw << @chars[rand(@char_size)]}		
		@one_pw.to_s
	end

	#method used for testing the size of the single password array
	def one_pw_test
		@one_pw.to_i
	end

	#initalizes an array of all possible password characters - returns a single element of the array for testing purposes
	def pw_characters(num)
		@chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
		@chars[num]
	end

	#fills the password array with the randomly generated strings from create_one_pw.  creates however many passwords the user input
	def fill_pw_a
		@num_passwords.to_i.times { @pw_array << create_one_pw}
	end

	#breaks each password on to its own line
	def print_pw_a
	  @pw_array.to_a.join("\n")
	end

end

#initalizes the class Pwgen
#p = Pwgen.new 

#prompts user for how many passwords to generate
#p.get_num_pws

#prompts user for how long each password should be
#p.get_length

#initalizes the possible characters for each password
#p.pw_characters(0)

#initalizes the password array
#p.create_pw_a

#fills the password array
#p.fill_pw_a

#prints the password array
#p.print_pw_a


