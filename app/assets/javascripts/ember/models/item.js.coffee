Bidbin.Item = Ember.Object.extend
  resourceUrl : '/items'
  resourceName : 'item'
  
  str: Ember.computed ->
    return "#{this.get("title")} #{this.get('description')} #{this.get('paypal_email')}"
  