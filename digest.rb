require 'mongoid'

ENV["MONGOID_ENV"] = "development"

Mongoid.load!("./mongoid.yml")

class Character
	include Mongoid::Document
	field :content, type: String
	field :before, type: String
	field :after, type: String
end

puts "Asimov: What word would you like to teach me?"
words = gets.chomp.split(/ /)

words.each do |word|
	characters = word.split(//)
	
	characters.each_index do |c|
		if c == 0
			Character.create(content: characters[c], before: "", after: characters[c+1])
		elsif c == characters.length - 1
			Character.create(content: characters[c], before: characters[c-1], after: "")
		else
			Character.create(content: characters[c], before: characters[c-1], after: characters[c+1])
		end
	end
end

#class Word
#	include Mongoid::Document
#	
#end

#class Input < Array
#	def to_digest
#		self.each_index do |i|
#			if digest["#{self[i]}"] == nil
#				digest["#{self[i]}"] = {}
#			end
#			if digest["#{self[i]}"]["#{self[i+1]}"] == nil
#				digest["#{self[i]}"]["#{self[i+1]}"] = 1
#			else
#				digest["#{self[i]}"]["#{self[i+1]}"] += 1
#			end
#		end
#	end
#end

#file = File.open("./demo.txt")
#contents = file.read
#input = contents.strip.downcase.split

#digest = Hash.new

#input.each_index do |i|
#	if digest["#{input[i]}"] == nil
#		digest["#{input[i]}"] = {}
#	end
#	if digest["#{input[i]}"]["#{input[i+1]}"] == nil
#		digest["#{input[i]}"]["#{input[i+1]}"] = 1
#	else
#		digest["#{input[i]}"]["#{input[i+1]}"] += 1
#	end
#end

#puts digest

#puts "What word do you want me to use in a sentence?"
#word = gets.chomp.downcase

#print word + " "

#output = ""

#z = digest["#{word}"].max { |a,b| a.last <=> b.last }.first
#output += z + " "
#y = digest["#{z}"].max { |a,b| a.last <=> b.last }.first
#output += y + " "
#x = digest["#{y}"].max { |a,b| a.last <=> b.last }.first
#output += x + " "
#w = digest["#{x}"].max { |a,b| a.last <=> b.last }.first
#output += w + " "
#v = digest["#{w}"].max { |a,b| a.last <=> b.last }.first
#output += v + " "
#u = digest["#{v}"].max { |a,b| a.last <=> b.last }.first
#output += u + " "
#t = digest["#{u}"].max { |a,b| a.last <=> b.last }.first
#output += t + " "

#puts output
