# Operations for budgets
class PositiveOperationsController < ApplicationController
  before_action :find_positive_operation, only: %i[show edit destroy update]
  def index; end

  def new
    @positive_operation = PositiveOperation.new
  end

  def create
    @positive_operation = PositiveOperation.new(operation_params)
    if @positive_operation.save
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
    @positive_operation = PositiveOperation.find(params[:id])
  end

  def operation_params
    params.require(:operation).permit(:category_id,
                                      :operation,
                                      :operation_type,
                                      :budget_id)
  end
end
