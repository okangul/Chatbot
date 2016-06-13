require_relative 'Strategy'

class NoMatchResponse<Strategy

	def control(line,hash)
        
        
        if line.include?("?")
                
            return true 
        end
              
    end


	def choice(line,hash)
		puts " Interesting, tell me what you think first."
	end
end