coffeescript 
need to remember to add () in window.Bidbin = Ember.Application.create()

TextField.value is not updated, use $(event.target).value()
Bidbin.FormItemTextFieldView = Ember.TextField.extend({
  keyUp : (event) ->
    value = $(event.target).val() # this.get('value') will not work here, since the value is only updated when insertNewline
    Bidbin.itemsController.newItem.set("title", value)
})

no keyup magic valueBinding is all it needed - {{view Ember.TextField valueBinding="title" placeholder="Title" class="span10"}} 


bind a value inside an array need ('content.@each'). e.g. 
  primaryPicture : (-> 
    if this.get('content').length > 0
      return this.get('content')[0]
  ).property('content.@each')


use setter to change the value, it will trigger binding.


.just like erb, commemted out code will be executed as well, just not show up in html, you will get cann not metroph error because the ember wont know where to push the data. 





