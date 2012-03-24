#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates


window.Bidbin = Ember.Application.create

Bidbin.Person = Ember.Object.extend
  say: (thing) ->  
      alert(thing)
