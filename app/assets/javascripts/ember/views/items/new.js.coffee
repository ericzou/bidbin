Bidbin.NewItemView = Ember.View.extend
  templateName : 'ember/templates/items/new'
  itemsBinding : 'Bidbin.itemsController'
  item : Bidbin.Item.create({ title : "Please enter title"})
    