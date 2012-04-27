window.Tmp = {}
Bidbin.FormPictureView = Ember.View.extend
  templateName : 'ember/templates/pictures/form'
  newPictureBinding : 'Bidbin.picturesController.newPicture'
  picturesBinding : 'Bidbin.picturesController.content'
  primaryPictureBinding : 'Bidbin.picturesController.primaryPicture'
  secondaryPicturesBinding : 'Bidbin.picturesController.secondaryPictures'
  primaryPictureSrc : (->
    Tmp.tmp = this
    Tmp.tmp2 = this.get('primaryPicture')
    primaryPicture = this.get('primaryPicture')
    console.log("primaryPicture")
    console.log(primaryPicture?.url)
    if primaryPicture then primaryPicture.url else 'http://placehold.it/2000x300'
  ).property('primaryPicture').cacheable()
  secondaryPictureUrls : (-> 
    s = ['http://placehold.it/300x200', 'http://placehold.it/300x200', 'http://placehold.it/300x200']
    pictures = this.get("secondaryPictures")
    console.log("here #{pictures}")
    for picture, i in pictures
      s[i] = picture.url
    return s
  ).property('secondaryPictures').cacheable()

  didInsertElement : ->
    this._super()      
    $('.fileupload').fileupload({
      dataType : 'json',
      done : (e, data) -> 
        Bidbin.picturesController.createPicture(data.result)
    })
  

Bidbin.StatView = Ember.View.extend({
  picturesBinding : 'Bidbin.picturesController.content'
})
