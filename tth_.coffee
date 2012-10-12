_ = require 'underscore'

_.mixin
  random: (input,max) ->
    if _.isNumber(input)
      min = input;
      unless max?
        max = min;
        min = 0;
      return min + (0 | Math.random() * (max - min + 1));
    else if _.isArray(list)
      return list[Math.floor(Math.random() * list.length)]
    else if _.isObject(list)
      return _.random(_.keys(list))
    else
      Math.random()

  now: ->
    (new Date).getTime()


if module?.exports?
  module.exports = _
  _._ = _
else
  root['_'] = _