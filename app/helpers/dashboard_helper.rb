module DashboardHelper
  def calc_costs(category)
    sum = 0
    category.costs_operations.each do |operation|
      sum += operation.value
    end
    sum
  end

  def calc_income(income_category)
    sum = 0
    income_category.incomes_operations.each do |operation|
      sum += operation.value
    end
    sum
  end
end
