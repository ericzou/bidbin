Bidbin.FormPictureView = Ember.View.extend
  templateName : 'ember/templates/pictures/form'
  newPictureBinding : 'Bidbin.picturesController.newPicture'
  

Bidbin.AddPictureView = Ember.View.extend({
  didInsertElement : ->
    this._super()      
    $('#fileupload').fileupload({
      dataType : 'json',
      done : (e, data) -> 
        Bidbin.picturesController.createPicture(data.result)
    })
})

Bidbin.StatView = Ember.View.extend({
  picturesBinding : 'Bidbin.picturesController.content'
})


Bidbin.PicturePreview = Ember.View.extend({
  picturesBinding : 'Bidbin.picturesController.content'
  primaryPictureBinding : 'Bidbin.picturesController.primaryPicture'
  secondaryPicturesBinding : 'Bidbin.picturesController.secondaryPictures'
  primaryPictureSrc : (->
    primaryPicture = this.get('primaryPicture')
    if primaryPicture then primaryPicture.url else 'http://placehold.it/300x200'
  ).property('primaryPicture')
  secondaryPictureUrls : (-> 
    s = ['http://placehold.it/90x70', 'http://placehold.it/90x70', 'http://placehold.it/90x70']
    pictures = this.get("secondaryPictures")
    console.log("here #{pictures}")
    for picture, i in pictures
      s[i] = picture.url
    return s
  ).property('secondaryPictures').cacheable()
})
