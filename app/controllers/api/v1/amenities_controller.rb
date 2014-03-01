class Api::V1::AmenitiesController < ApplicationController
  before_action :set_amenity, only: [:show, :update, :destroy]
  respond_to :json

  # GET /amenities
  def index
    respond_with Amenity.all
  end

  # GET /amenities/1
  def show
    respond_with @amenity
  end

  # POST /amenities
  def create
    @amenity = Amenity.new(amenity_params)

    if @amenity.save
      respond_with @amenity, status: :created, location: [:api, :v1, @amenity]
    else
      render json: @amenity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /amenities/1
  def update
    if @amenity.update(amenity_params)
      respond_with @amenity, status: :ok, location: [:api, :v1, @amenity]
    else
      render json: @amenity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /amenities/1
  def destroy
    @amenity.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_amenity
    @amenity = Amenity.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def amenity_params
    params.require(:amenity).permit(:wifi, :power)
  end
end
