class Picture < ActiveRecord::Base
  include Urlable
  delegate :url, :to => :file
  

  has_attached_file :file
  
end

