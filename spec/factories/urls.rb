# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :url do
  	source 		"https://www.google.com/"
  	mini_link	"https://www.google.com/"
  end
end
