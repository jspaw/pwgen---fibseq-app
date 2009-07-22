class FibSeq

	def initialize(num)
		@num = num
		generate(@num +1)
	end

	def generate ( iterations )
		i = 0
		j = 0
		oldnumber = 0
		nextnumber = 1
		@fibarray = Array.new
		iterations.times { @fibarray<< "Iteration: #{j} Number: #{nextnumber}||"
    oldnumber = i 
	  i = nextnumber
		nextnumber += oldnumber   
	  j += 1 }
	@fibarray
	end

	def print
		@fibarray.to_a.join("\n")
	end

	

end


