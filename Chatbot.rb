require_relative 'Chat'
require_relative 'User'
require_relative 'Strategy'


class Chatbot<Chat
    def initialize(user,hash)
        @user=user
        @hash=hash
        user.add_observer(self)
        
        super(user)
    end
    
    def hello()
        puts("Hi My Friend !")
    end
    
    def goodbye()
        puts("Goodbye My Friend !")
    end
    
    def update(line)
    	str1=OneResponse.new
    	str2=RegularResponse.new
    	str3=NoMatchResponse.new
    	str4=ChangeResponse.new

    	
        


    	line=line.downcase

    	if str1.control(line,@hash)
    		str1.choice(line,@hash)
    	elsif str2.control(line,@hash)
    		str2.choice(line,@hash)
        elsif str3.control(line,@hash)
            str3.choice(line,@hash)
        elsif str4.control(line,@hash)
            str4.choice(line,@hash)
    	end
    	
    	

    	
    	
    	

    	
    	

    end
end

