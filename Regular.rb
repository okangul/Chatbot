require_relative 'Strategy'
require_relative 'Chatbot'
class RegularResponse<Strategy

    def control(line,hash)
        
        hash.each do|k,v|
        
            if line.include? k.to_s
                
                
                return true
            end
        end
        

        return false
    end


	def choice(line,hash)
	
    
		hash.each do|k,v|
    	
    		if line.include? k.to_s
    			
    			puts v[0]
                break
    			
 
    		end
    	end


    end
		
end