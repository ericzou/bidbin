Bidbin.Item = Ember.Resource.extend
  resourceUrl : '/items'
  resourceName : 'item'
  resourceProperties : ['title', 'description', 'paypal_email', 'url', 'slug']
  
  str: Ember.computed ->
    return "#{this.get("title")} #{this.get('description')} #{this.get('paypal_email')}"
  
