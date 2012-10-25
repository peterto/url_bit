require 'spec_helper'

describe "NewUrlPages" do
  describe "should visit new url page" do
    it "and create a new url" do
    	visit new_url_path

    	fill_in :url, :with => "https://www.google.com/"

    	click_button :submit

    	url = Url.last # grabs created url

    	page.should have_content(url.mini_link)

    end
  end
end
