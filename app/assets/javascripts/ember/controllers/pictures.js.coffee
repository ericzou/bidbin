Bidbin.picturesController = Ember.ResourceController.create
  content : []
  resourceType : Bidbin.Picture
  newPicture : Bidbin.Picture.create()
  createPicture : (result) -> 
    picture = Bidbin.Picture.create({ id : result.id,  file_file_name : result.file_file_name, url : result.url })
    this.pushObject(picture)
  primaryPicture : (-> 
    if this.get('content').length > 0
      return this.get('content')[0]
  ).property('content.@each')
  secondaryPictures : (->
    content = this.get('content')
    index_of_last = if content.length > 4 then 3 else content.length-1  
    if content.length > 1 then content[1..index_of_last] else []
  ).property('content.@each').cacheable()

