_ = require 'underscore'

_.mixin
  random: (list) ->
    if _.isArray(list)
      return list[Math.floor(Math.random() * list.length)]
    if _.isObject(list)
      key = _.random(_.keys(list))
      return [key,list[key]]

for i in [0..5]
  console.log _.random([0..20])

for i in [0..5]
  console.log _.random
    a:3
    b:4
    c:5
    d:7
    e:9
    h:3