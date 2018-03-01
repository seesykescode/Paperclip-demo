class PhotosController < ApplicationController
 def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new photo_params
    @photo.save
    if @photo.save
      redirect_to photos_index_path
    else
     redirect_to photos_new
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :photo)
  end
end
