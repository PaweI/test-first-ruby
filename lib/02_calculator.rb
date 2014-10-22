def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(array)
	array.inject(0) {|sum,x| sum + x}
end

def multiply(*nums)
	nums.inject {|mult,x| mult * x}
end

def power(x,y) 
	x**y
end

def factorial(n)
	if n == 0 || n == 1
		1
	else
		n * factorial(n-1)
	end
end