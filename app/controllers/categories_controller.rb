# Categories
class CategoriesController < ApplicationController
  before_action :find_category, only: %i[show edit destroy update]
  def index; end

  def show; end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path, notice: 'Категория успешно создана'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @category.update_attributes(category_params)
      redirect_to @category, notice: 'Рецепт успешно изменен'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to root_path, notice: 'Рецепт успешно удален'
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :icon, :color, :month_budget)
  end
end
