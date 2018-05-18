class IncomesCategoriesController < ApplicationController
  before_action :set_incomes_category, only: %i[show edit update destroy]

  def index
    @incomes_categories = IncomesCategory.all
  end

  def show; end

  def new
    @incomes_category = IncomesCategory.new
  end

  def edit; end

  def create
    @incomes_category = IncomesCategory.new(incomes_category_params)

    respond_to do |format|
      if @incomes_category.save
        format.html { redirect_to root_path, notice: 'Income category was successfully created.' }
        format.json { render :show, status: :created, location: @incomes_category }
      else
        format.html { render :new }
        format.json { render json: @incomes_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @incomes_category.update(incomes_category_params)
        format.html { redirect_to @incomes_category, notice: 'Income category was successfully updated.' }
        format.json { render :show, status: :ok, location: @incomes_category }
      else
        format.html { render :edit }
        format.json { render json: @incomes_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @incomes_category.destroy
    respond_to do |format|
      format.html { redirect_to incomes_categories_url, notice: 'Income category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_incomes_category
    @incomes_category = IncomesCategory.find(params[:id])
  end

  def incomes_category_params
    params.require(:incomes_category).permit(:title, :icon, :color)
  end
end
