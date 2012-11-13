class UrlsController < ApplicationController
	respond_to :html, :json

	def index
		respond_with(@urls = Url.all)
	end

	def new
		respond_with(@url = Url.new)
	end

  def create
    existing_url = Url.find_by_source(params[:url][:source])
    if existing_url
      respond_with(existing_url) do |format|
        flash[:notice] = "URL already exists"
        format.html { redirect_to existing_url }
      end
    else
      @url = Url.new(params[:url])
      respond_with(@url) do |format|
        if @url.save
          flash[:notice] = "URL was created successfully"
          format.html { redirect_to @url }
        else
          format.html { render :new }
        end
      end
    end
  end

	def show
		respond_with(@url = Url.find(params[:id]))
	end

	def go
		@url = Url.find_by_mini_link(params[:id])
		redirect_to @url.source
	end

end
