class Item < ActiveRecord::Base
  include Urlable

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :pictures
  
end
