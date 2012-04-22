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
})
