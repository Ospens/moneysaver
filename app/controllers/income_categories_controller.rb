class IncomeCategoriesController < ApplicationController
  before_action :set_income_category, only: %i[show edit update destroy]

  def index
    @income_categories = IncomeCategory.all
  end

  def show; end

  def new
    @income_category = IncomeCategory.new
  end

  def edit; end

  def create
    @income_category = IncomeCategory.new(income_category_params)

    respond_to do |format|
      if @income_category.save
        format.html { redirect_to root_path, notice: 'Income category was successfully created.' }
        format.json { render :show, status: :created, location: @income_category }
      else
        format.html { render :new }
        format.json { render json: @income_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @income_category.update(income_category_params)
        format.html { redirect_to @income_category, notice: 'Income category was successfully updated.' }
        format.json { render :show, status: :ok, location: @income_category }
      else
        format.html { render :edit }
        format.json { render json: @income_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @income_category.destroy
    respond_to do |format|
      format.html { redirect_to income_categories_url, notice: 'Income category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_income_category
      @income_category = IncomeCategory.find(params[:id])
    end

    def income_category_params
      params.require(:income_category).permit(:title, :icon, :color)
    end
end
