Bidbin.FormItemView = Ember.View.extend
  templateName : 'ember/templates/items/form'
  itemsBinding : 'Bidbin.itemsController'
  newItemBinding : 'Bidbin.itemsController.newItem'

Bidbin.CreateItemButtonView = Ember.Button.extend
  newItemBinding : 'Bidbin.itemsController.newItem'
  
  
