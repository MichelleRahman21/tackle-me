class WearersController < ApplicationController
  before_action :set_wearer, only: [:show, :update, :destroy]

  # GET /wearers
  def index
    @wearers = Wearer.all

    render json: @wearers
  end

  # GET /wearers/1
  def show
    render json: @wearer
  end

  # POST /wearers
  def create
    @wearer = Wearer.new(wearer_params)

    if @wearer.save
      render json: @wearer, status: :created, location: @wearer
    else
      render json: @wearer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wearers/1
  def update
    if @wearer.update(wearer_params)
      render json: @wearer
    else
      render json: @wearer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wearers/1
  def destroy
    @wearer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wearer
      @wearer = Wearer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wearer_params
      params.require(:wearer).permit(:name, :email, :password, :item_id)
    end
end
