require_relative 'Chat'
require_relative 'Chatbot'
require_relative 'User'
require_relative 'Strategy'
require_relative 'Regular'
require_relative 'One'
require_relative 'NoMatch'
require_relative 'Change'



hash = {}
File.open('chatter.txt','r') do |fp|
  	fp.each do |line|
  		line = line.chomp
  		if(!line.empty?)
	    key, a = line.split(":")
	    value =a.split(';')
	    hash[key] = value
	end
    end
end


okan=User.new()
bot1=Chatbot.new(okan,hash)