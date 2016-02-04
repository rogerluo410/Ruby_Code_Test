#key相同的hash merge
#

h1 = { id: 1, c:{id:2, s: "s"}}
h2 = { id: 1, c:{id:3, s: "s1"}}

p h1.merge(h2)
