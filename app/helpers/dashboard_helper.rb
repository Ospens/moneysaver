module DashboardHelper
  def calc_costs(category)
    sum = 0
    category.operations.each do |operation|
      sum = sum + (operation.operation * operation.operation_type * (-1))
    end
    sum
  end
end
