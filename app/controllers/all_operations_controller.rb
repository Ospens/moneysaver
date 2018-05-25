class AllOperationsController < ApplicationController
  def index
    if category = params[:category_id]
      @costs_operations = CostsOperation.where(costs_category_id: category).order(:datetime)
    else
      @costs_operations = CostsOperation.all.order(:datetime)
    end
    #@incomes_operations = IncomesOperation.all.order(:datetime)
  end

  private

  def operation_params
    params.require(:all_operation).permit(:category_id)
  end
end
