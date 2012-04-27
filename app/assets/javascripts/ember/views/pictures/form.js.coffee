window.Tmp = {}
Bidbin.FormPictureView = Ember.View.extend
  templateName : 'ember/templates/pictures/form'
  picturesBinding : 'Bidbin.picturesController.content'
  primaryPictureBinding : 'Bidbin.picturesController.primaryPicture'
  secondaryPicturesBinding : 'Bidbin.picturesController.secondaryPictures'
  secondPictureBinding : 'Bidbin.picturesController.secondPicture'
  thirdPictureBinding : 'Bidbin.picturesController.thirdPicture'
  forthPictureBinding : 'Bidbin.picturesController.forthPicture'

  primaryPictureSrc : (->
    primaryPicture = this.get('primaryPicture')
    if primaryPicture then primaryPicture.url else 'http://placehold.it/2000x300'
  ).property('primaryPicture').cacheable()
  secondaryPictureUrls : (-> 
    s = ['http://placehold.it/300x200', 'http://placehold.it/300x200', 'http://placehold.it/300x200']
    pictures = this.get("secondaryPictures")
    console.log("oh...no")
    for picture, i in pictures
      s[i] = picture.url
    return s
  ).property('secondaryPictures').cacheable()
  secondImageUrl : (->
    this.get('secondaryPictureUrls')[0]
  ).property('secondaryPictureUrls')
  thirdImageUrl : (->
    this.get('secondaryPictureUrls')[1]
  ).property('secondaryPictureUrls')
  forthImageUrl : (->
    this.get('secondaryPictureUrls')[2]
  ).property('secondaryPictureUrls')



  didInsertElement : ->
    this._super()      
    $('.primary-image-uploader').fileupload({
      dataType : 'json',
      formData : { picture_position : 1 }
      done : (e, data) -> 
        Bidbin.picturesController.createPicture(data.result)
    })
    $('.second-image-uploader').fileupload({
      dataType : 'json',
      formData : { picture_position : 2 }
      done : (e, data) -> 
        Bidbin.picturesController.createPicture(data.result)
    })
    $('.third-image-uploader').fileupload({
      dataType : 'json',
      formData : { picture_position : 3 }
      done : (e, data) -> 
        Bidbin.picturesController.createPicture(data.result)
    })
    $('.forth-image-uploader').fileupload({
      dataType : 'json',
      formData : { picture_position : 4 }
      done : (e, data) -> 
        Bidbin.picturesController.createPicture(data.result)
    })
