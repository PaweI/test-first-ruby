require "time"

def measure(n=0)
	start = Time.now
	if n == 0
		yield
	else
		n.times { |block| result = yield(block) }
	end
    (Time.now - start) / ( n == 0 ? 1 : n)
end