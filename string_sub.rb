#string 取子串方法sub

s = "catsanddog"

dict = ["cat", "cats", "and", "sand", "dog"]

h = {}
substr_set = dict.map { | d |
  h[s=~/#{d}/] << d.length unless (s=~/#{d}/).nil? 
}

p substr_set

#substr_set.map.with_index do | s, index |
#   if s[0] == 0 
#     i#substr_set.each { | substr |  }
#   end
#end
