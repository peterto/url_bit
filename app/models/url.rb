class Url < ActiveRecord::Base
  attr_accessible :source, :mini_link

  validates_presence_of :source

  before_create :shorten_url


  private

  def shorten_url
    if Url.any?
      shorten_url = Url.last.mini_link.to_i(36) + 1
      self.mini_link = shorten_url.to_s(36) # Apply a base 36 numbering system (a-z, 0-9)
    else
      self.mini_link = Time.now.utc.to_i.to_s(36) # Apply a base 36 numbering system (a-z, 0-9)
    end
  end
  
end
