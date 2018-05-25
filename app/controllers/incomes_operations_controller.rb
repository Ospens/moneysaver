# Operations for budgets
class IncomesOperationsController < ApplicationController
  before_action :find_positive_operation, only: %i[show edit destroy update]
  def index; end

  def new
    @incomes_operation = IncomesOperation.new
  end

  def create
    @incomes_operation = IncomesOperation.new(incomes_operation_params)
    if @incomes_operation.save
      redirect_to root_path, notice: 'Операция добавлена'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update; end

  private

  def find_positive
    @incomes_operation = IncomesOperation.find(params[:id])
  end

  def incomes_operation_params
    params.require(:incomes_operation).permit(:incomes_category_id,
                                              :value,
                                              :account_id,
                                              :datetime)
  end
end
