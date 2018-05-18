class DashboardController < ApplicationController
  def index
    @costs_categories = CostsCategory.all
    @incomes_categories = IncomesCategory.all
  end
end
