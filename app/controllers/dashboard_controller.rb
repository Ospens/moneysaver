class DashboardController < ApplicationController
  def index
    @expenditure_categories = Category.all
    @income_categories = IncomeCategory.all
  end
end
