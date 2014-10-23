def translate(word)
	str = word.scan(/\S+/)
	res = []
	str.each do |word|
    if "aeiou".include?(word[0])
    	res << (word + "ay")
	else
		cons = ""
	    x = 0
	    until "aeiou".include?(word[x])
	    	cons += word[x]
		    word.sub(word[x], "")
		    x += 1
		end
		if  cons[-1] + word.sub(cons, "")[0] == 'qu'
				cons += 'u'
			end
	    new_str = word.sub(cons, "") + cons + 'ay'
	    if word == word.capitalize
		    new_str.capitalize!
		    end
	    res << new_str
		end
	end
	res.each_with_index do |word, index|
		word.each_char do |chr|
			if ",.:;-?!".include?(chr)
				res[index] = word.delete(chr) + chr
			end
		end
	end
	res.join(" ")
end
