class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :update, :destroy]

  # GET /galleries
  # GET /galleries.json
  def index
    # byebug
    page_opts = {
      :page => params[:page] || 1,
      :per_page => params[:perPage] || 10
    }
    if params[:order].present?
      order = params[:order].first == '-' ? params[:order][1..-1] + ' DESC' : params[:order] + ' ASC'
    else
      order = 'name ASC'
    end
    @galleries = Gallery.all.paginate(page_opts).order(order)
    render json: @galleries
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
    render json: @gallery
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      render json: @gallery, status: :created, location: @gallery
    else
      render json: @gallery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    @gallery = Gallery.find(params[:id])

    if @gallery.update(gallery_params)
      head :no_content
    else
      render json: @gallery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery.destroy

    head :no_content
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:name, :description, :thumbnail)
  end
end
