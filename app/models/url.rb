class Url < ActiveRecord::Base
  attr_accessible :source, :mini_link

  validates_presence_of :source

  before_create :shorten_url


  private

  def shorten_url
    self.mini_link = random_string
  end

  def random_string
    num = ""
    arr = ((48...57).to_a + (64...90).to_a + (97...122).to_a ) # Generates a random 7 character string that includes 0-9, A-Z, or a-z based on ascii codes
    7.times { num << arr[rand(arr.length)] }
    num
  end
  
end
