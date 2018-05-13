module DashboardHelper
  def calc_costs(category)
    sum = 0
    category.operations.each do |operation|
      sum += operation.operation * operation.operation_type * -1
    end
    sum
  end

  def calc_income(income_category)
    sum = 0
    income_category.positive_operations.each do |operation|
      sum += operation.value
    end
    sum
  end
end
