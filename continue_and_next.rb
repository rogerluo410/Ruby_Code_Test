#迭代器中的跳转是 next关键字

new = [1,2,3,4,5].map do | e |
  next if e > 3
  e
end

p new
