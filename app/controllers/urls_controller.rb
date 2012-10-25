class UrlsController < ApplicationController
	respond_to    :html, :json

	def index
		@urls = Url.all

		respond_with(@urls)

	end

	def new
		@url = Url.new
	end

	def create
		@url = Url.new(params[:url])

		respond_to do |format|
			if @url.save
				format.html { redirect_to @url, :notice => "URL has been created" }
				format.json { render :json => @url }
			else
				format.html { render :new }
				format.json { render :json => @url.errors }
			end
		end

	end

	def show
		@url = Url.find(params[:id])
	end
	

end
