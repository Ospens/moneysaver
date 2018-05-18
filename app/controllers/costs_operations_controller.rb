# Costs Operations
class CostsOperationsController < ApplicationController
  before_action :find_costs_operation, only: %i[show edit destroy update]
  def index; end

  def new
    @costs_operation = CostsOperation.new
  end

  def create
    p costs_operation_params
    @costs_operation = CostsOperation.new(costs_operation_params)
    if @costs_operation.save
      redirect_to root_path, notice: 'Операция добавлена'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update; end

  private

  def find_costs_operation
    @costs_operation = CostsOperation.find(params[:id])
  end

  def costs_operation_params
    params.require(:costs_operation).permit(:costs_category_id,
                                            :value,
                                            :account_id)
  end
end
