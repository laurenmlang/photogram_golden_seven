class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
  	@photo = Photo.find(params["id"])
  end

  def new_form

  end

  def create_photo
  	p=Photo.new
  	p.caption = params["the_caption"]
  	p.source = params["the_source"]
  	p.save

  	redirect_to("http://localhost:3000/photos")
  end

  def destroy
  	@photo = Photo.find(params["id"])
  	@photo.destroy

  	redirect_to("http://localhost:3000/photos")
  end

  def edit_form
  	@photo = Photo.find(params["id"])
  	
  end

  def update
  	p = Photo.find(params["id"])
  	p.caption = params["the_caption"]
  	p.source = params["the_source"]
  	p.save

    redirect_to("http://localhost:3000/photos")	
  end
end
