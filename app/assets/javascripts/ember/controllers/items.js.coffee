Bidbin.itemsController = Ember.ResourceController.create
  resourceType : Bidbin.Item
  newItem : Bidbin.Item.create()
  create : -> 
    this.newItem.saveResource()