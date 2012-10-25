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
		it "should respond successfully" do
			post :create
			response.should be_successful
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
