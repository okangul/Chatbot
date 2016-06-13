require "observer"

class User
    include Observable
    
    
  def dialogue()
      
    if File.exist? 'script.txt'
      fp = File.open('script.txt','r')
      while line = fp.gets
        puts(line)
        changed    
        notify_observers(line)
      end
      fp.close
    else
      while line=gets.chomp
        changed    
        notify_observers(line)
      end
    end



  end
    
end