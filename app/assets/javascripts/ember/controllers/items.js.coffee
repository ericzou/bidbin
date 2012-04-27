Bidbin.itemsController = Ember.ResourceController.create
  resourceType : Bidbin.Item
  newItem : Bidbin.Item.create()
  create : -> 
    picture_ids = Bidbin.picturesController.content.map (pic) -> pic.id
    this.newItem.set('picture_ids', picture_ids)
    this.newItem.saveResource()
    