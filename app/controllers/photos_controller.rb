class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params['id'])
  end

  def new_form
    @photo = Phone.new
  end

  def create_row
    @photo = Photo.new
    @photo.caption = params['the_caption']
    @photo.source = params['the_source']
    if @photo.save
      redirect_to "/photos/#{@photo.id}"
    else
      render 'new_form'
    end
  end

  def destroy
    @photo = Photo.find(params['id'])
    @photo.destroy
  end

  def edit_form
    @photo = Photo.find(params['id'])
  end

  def update_row
    @photo = Photo.find(params['id'])
    @photo.caption = params['the_caption']
    @photo.source = params['the_source']
    @photo.save

    redirect_to "/photos/#{@photo.id}"
  end

  def index
    @photos = Photo.all
  end
end





