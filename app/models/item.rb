class Item < ActiveRecord::Base
  include Urlable

  extend FriendlyId
  friendly_id :title, use: :slugged
  
end
