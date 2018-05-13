# Operations
class OperationsController < ApplicationController
  before_action :find_operation, only: %i[show edit destroy update]
  def index; end

  def new
    @operation = Operation.new
  end

  def create
    @operation = Operation.new(operation_params)
    if @operation.save
      redirect_to root_path, notice: 'Операция добавлена'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update; end

  private

  def find_operation
    @operation = Operation.find(params[:id])
  end

  def operation_params
    params.require(:operation).permit(:category_id, :operation, :operation_type)
  end
end
