class CategoriesController < ApplicationController

  before_action :category_find, only: [:show, :edit, :destroy, :update]
  def index
  end

  def show
  end

  def new
    @category = Category.new
    @category.budgets.build
  end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to root_path, notice: 'Категория успешно создана'
		else
			render :new
		end
	end

  def edit

  end

  def update
    if  @category.update_attributes(category_params)
  		redirect_to @category, notice: 'Рецепт успешно изменен'
  	else
  		render :edit
  	end
  end

  def destroy
    @category.destroy
    redirect_to root_path, notice: 'Рецепт успешно удален'
  end

  def find_category
    @result = Category.where('description LIKE ?', "%#{params[:textValue]}%").take(10)
    render partial: 'result'
  end

  private

  def category_find
    @category = Category.find(params[:id])
  end

  def category_params
		params.require(:category).permit(:title, :icon, :color, budgets_attributes: [:budget])
  end

end
