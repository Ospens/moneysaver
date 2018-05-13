# Budgets
class BudgetsController < ApplicationController
  def index; end

  def show; end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(Budget_params)
    if @budget.save
      redirect_to root_path, notice: 'Счет создан'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @budget.update_attributes(budget_params)
      redirect_to @budget, notice: 'Счет изменен'
    else
      render :edit
    end
  end

  def destroy
    @budget.destroy
    redirect_to root_path, notice: 'Счет удален'
  end

  private

  def find_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params.require(:Budget).permit(:title, :icon, :color, :month_budget)
  end
end
