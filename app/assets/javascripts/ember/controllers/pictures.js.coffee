Bidbin.picturesController = Ember.ResourceController.create
  content : []
  resourceType : Bidbin.Picture
  createPicture : (result) -> 
    picture = Bidbin.Picture.create({ id : result.id,  file_file_name : result.file_file_name, url : result.url, picture_position: result.picture_position })
    this.pushObject(picture)
  primaryPicture : (-> 
    this.get("content").findProperty('picture_position', 1)
  ).property('content.@each').cacheable()
  secondaryPictures : (->
    this.get("content").filter (pic)-> 
      pic.picture_position != 1
  ).property('content.@each').cacheable()

  secondPicture : (->
    this.get("secondaryPictures")?.findProperty('picture_position', 2)
  ).property('secondaryPictures.@each')
  
  thirdPicture : (->
    this.get("secondaryPictures")?.findProperty('picture_position', 3)
  ).property('secondaryPictures.@each')
  
  forthPicture : (->
    this.get("secondaryPictures")?.findProperty('picture_position', 4)
  ).property('secondaryPictures.@each')

