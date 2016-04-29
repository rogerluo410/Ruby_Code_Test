

m = 1
h = {
     id: 1
}.tap do | o |
	o[:sm] = 1  if m == 1
end

p h
