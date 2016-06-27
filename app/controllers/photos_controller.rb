class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]


  # GET /photos
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photos_path, notice: 'Photo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /photos/1
  def update
    if @photo.update(photo_params)
      redirect_to photos_path, notice: 'Photo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /photos/1
  def destroy
    @photo.destroy
    redirect_to gallery_path, notice: 'Photo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.where(id: params[:id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def photo_params
      params.require(:photo).permit(:title, :image)
    end
end
