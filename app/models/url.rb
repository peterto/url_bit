class Url < ActiveRecord::Base
  attr_accessible :source, :mini_link

  validates_presence_of :source
  validates_presence_of :mini_link
  
end
