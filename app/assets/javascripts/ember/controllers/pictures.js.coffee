Bidbin.picturesController = Ember.ResourceController.create
  content : []
  resourceType : Bidbin.Picture
  newPicture : Bidbin.Picture.create()
  createPicture : (result) -> 
    picture = Bidbin.Picture.create({ id : result.id,  file_file_name : result.file_file_name, url : result.url })
    this.pushObject(picture)
  primaryPicture : (-> 
    if this.get('content').length > 0
      console.log("here #{this.get('content')}")
      return this.get('content')[0]
    # Bidbin.Picture.create()

  ).property('content.@each')
