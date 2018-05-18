# Costs Categories
class CostsCategoriesController < ApplicationController
  before_action :find_costs_category, only: %i[show edit destroy update]
  def index; end

  def show; end

  def new
    @costs_category = CostsCategory.new
  end

  def create
    @costs_category = CostsCategory.new(costs_category_params)
    if @costs_category.save
      redirect_to root_path, notice: 'Категория расхода успешно создана'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @costs_category.update_attributes(costs_category_params)
      redirect_to @costs_category, notice: 'Категория расхода успешно изменен'
    else
      render :edit
    end
  end

  def destroy
    @costs_category.destroy
    redirect_to root_path, notice: 'Категория расхода успешно удален'
  end

  private

  def find_costs_category
    @costs_category = CostsCategory.find(params[:id])
  end

  def costs_category_params
    params.require(:costs_category).permit(:title, :icon, :color, :month_budget)
  end
end
