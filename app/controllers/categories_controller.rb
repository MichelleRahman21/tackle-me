# frozen_string_literal: true

class CategoriesController < ProtectedController
  before_action :set_category, only: %i[show update destroy]

  # GET /categories
  def index
    @categories = current_user.Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: Item.find(params[:id])
  end

  # POST /categories
  def create
    @category = current_user.categories.build(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = current_user.categories.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def category_params
    params.require(:category).permit(:name, :description)
  end
end
