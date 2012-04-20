Bidbin.itemsController = Ember.ResourceController.create
  resourceType : Bidbin.Item
  newItem : Bidbin.Item.create()
  create : -> 
    console.log(this.newItem)
    this.newItem.saveResource()