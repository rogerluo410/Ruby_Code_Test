#合并两个数组，实现左外并集
#
#array & other_array  交集
#返回一个新的数组，包含两个数组中共同的元素，没有重复。
#
#array + other_array 并集
#返回一个新的数组，新数组通过连接两个数组产生第三个数组创建的。
#
#array | other_array 并集入array中
#通过把 other_array 加入 array 中，移除重复项，返回一个新的数组
#
#array - other_array  差集入array中
#返回一个新的数组，新数组是从初始数组中移除了在 other_array 中出现的项的副本。
#
#

a1 = [1,2,4,6]
a2 = [2,7,4,8,9,5]

a3 = a1 - a2 

print a3 


a4 = [3,4,5,6]
a5 = [6,7,8]

a4 = (a5 | a4) & a4 
print a4
