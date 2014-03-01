class Api::V1::LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]
  respond_to :json

  # GET /locations
  def index
    respond_with Location.all
  end

  # GET /locations/1
  def show
    respond_with @location
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      respond_with @location, status: :created, location: [:api, :v1, @location]
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      respond_with @location, status: :ok, location: [:api, :v1, @location]
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_location
    @location = Location.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def location_params
    params.require(:location).permit(:space_id, :address, :longitude, :latitude)
  end
end
