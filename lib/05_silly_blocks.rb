def reverser
	res = []
    yield.scan(/\w+/).each do |word|
    	res << word.reverse 
    end
    res.join(" ")
end

def adder(n=1)
	yield + n
end

def repeater(x=nil)
	yield
    n = 0
    (x-1).times { |i| yield } if x != nil
    n
end