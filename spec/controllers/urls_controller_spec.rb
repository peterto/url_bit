require 'spec_helper'

describe UrlsController do

	describe "get index" do
		it "should respond successfully" do
			get :index
			response.should be_successful
		end
	end

	describe "get new" do
		it "should respond successfully" do
			get :new
			response.should be_successful
		end
	end

	describe "post create" do
		it "should create new url and redirect to the new url path" do
      url = FactoryGirl.build(:url)
      post :create, :url => {:source => url.source }
      assigns[:url].persisted?.should be_true
      flash[:notice].should == "URL was created successfully"
      response.should redirect_to url_path(assigns[:url])
    end

    it "should not create new url and redirect to existing url path" do
      url = FactoryGirl.create(:url)
      post :create, :url => {:source => url.source }
      assigns[:url].should be_nil
      flash[:notice].should == "URL already exists"
      response.should redirect_to url_path(url)
    end
  end

	describe "get show" do
		it "should respond successfully" do
			url = FactoryGirl.create(:url)
			get :show, :id => url.id
			response.should be_successful
		end
	end

end