module Urlable
  def self.included(base)
    base.send(:include, Rails.application.routes.url_helpers)
    Rails.application.routes.default_url_options =  ActionMailer::Base.default_url_options
  end

  def url
    return nil if new_record?
    url = send("#{self.class.to_s.underscore}_url", self)
  end unless respond_to?(:url)

  def as_json(options={})
    h = super(options)
    h.merge(:url => url)
  end  
end