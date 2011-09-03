_ = require('./tth_')

console.log _.map [1,2,3],(n)->n*n

for i in [0...5]
  console.log _.random([0..20])

for i in [0...5]
  console.log _.random
    a:3
    b:4
    c:5
    d:7
    e:9
    h:3