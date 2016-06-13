require_relative 'Strategy'

class ChangeResponse<Strategy

	def control(line,hash)
		
		hash.each do|k,v|
        
            if !line.include? k.to_s
            	
                
                return true 
                
 
            end
        end
        return false
	end
	def choice(line,hash)

		puts hash.fetch("change subject")[0]
		
	end
end