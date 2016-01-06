#通过正则表达式查找hash的key是否存在
#
#

h = { :tax => 1, :tax_1 => 2} 

p h[:tax1].any?
p h.has_key?(:tax)
p h.has_key?("tax".to_sym)
p h.keys.any?
p h.keys.any? { |key| key.to_s.match(/tax/)}
p !!h.keys.detect{ |k| k.to_s =~ /tax/ }

