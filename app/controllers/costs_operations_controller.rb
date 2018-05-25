# Costs Operations
class CostsOperationsController < ApplicationController
  before_action :find_costs_operation, only: %i[show edit destroy update]
  def index; end

  def new
    @costs_operation = CostsOperation.new
  end

  def create
    @costs_operation = CostsOperation.new(costs_operation_params)
    if @costs_operation.save
      redirect_to root_path, notice: 'Операция добавлена'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @costs_operation.update_attributes(costs_operation_params)
      redirect_to all_operations_path, notice: 'Операция успешно изменена'
    else
      render :edit
    end
  end

  def destroy
    @costs_operation.destroy
    respond_to do |format|
      format.html { redirect_to all_operations_path, notice: 'Операция удалена' }
      format.json { head :no_content }
    end
  end
  private

  def find_costs_operation
    @costs_operation = CostsOperation.find(params[:id])
  end

  def costs_operation_params
    params.require(:costs_operation).permit(:costs_category_id,
                                            :value,
                                            :account_id,
                                            :datetime)
  end
end
