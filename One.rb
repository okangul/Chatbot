require_relative 'Strategy'

class OneResponse<Strategy

	def control(line,hash)
		
		if line.split(/\s+/).length==1
			return true
		end


	end

	def choice(line,hash)
		puts " Goodbye My Friend !"
		exit
		
	end

end