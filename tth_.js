(function() {
  var _;
  _ = require('underscore');
  _.mixin({
    random: function(list) {
      var key;
      if (_.isArray(list)) {
        return list[Math.floor(Math.random() * list.length)];
      }
      if (_.isObject(list)) {
        key = _.random(_.keys(list));
        return [key, list[key]];
      }
    }
  });
  if ((typeof module !== "undefined" && module !== null ? module.exports : void 0) != null) {
    module.exports = _;
    _._ = _;
  } else {
    root['_'] = _;
  }
}).call(this);
