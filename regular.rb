
str = "066"
p  /[0-9]+/.match(str) #=> #<MatchData "066">  match successfully, return a obj
p str =~ /[0-9]+/ #=> 0 match successfully, return 0  

str1 = "abc"
p  /[0-9]+/.match(str1) #=> nil
p  str1 =~ /[0-9]+/     #=> nil
