require 'time'
def measure (n = 1)
	time = Time.now
	n.times { yield }
	(Time.now - time)/ n

end