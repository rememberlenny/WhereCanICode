class Api::V1::SpacesController < ApplicationController
  before_action :set_space, only: [:show, :update, :destroy]
  respond_to :json

  # GET /spaces
  def index
    respond_with Space.all
  end

  # GET /spaces/1
  def show
    respond_with @space
  end

  # POST /spaces
  def create
    @space = Space.new(space_params)

    if @space.save
      respond_with @space, status: :created, location: [:api, :v1, @space]
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spaces/1
  def update
    if @space.update(space_params)
      respond_with @space, status: :ok, location: [:api, :v1, @space]
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spaces/1
  def destroy
    @space.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_space
    @space = Space.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def space_params
    params.require(:space).permit(:title, :description, :published_at, :intro, :extended)
  end
end
