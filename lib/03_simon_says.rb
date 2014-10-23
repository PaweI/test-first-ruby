def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(word, y=2)
	str = (word + " ")* y
	str[0..-2]
end

def start_of_word(str, num)
	str[0..num-1]
end

def first_word(str)
	first = str.scan(/\w+/)
	first[0]
end

def titleize(str)
	if str.index(" ") == nil
		str.capitalize!
	elsif str.scan(/\w+/).length == 2
		str.scan(/\w+/).each { |word| word.capitalize! } .join(" ")
	else 
		res = []
		list = str.scan(/\w+/)
		res << list[0].capitalize!
		for e in list[1..-2]
			if e.length > 4
				res << e.capitalize!
		    else
		    	res << e
		    end
		end
		res << list[-1].capitalize!
		res.join(" ")
	end
end