# Dashboard helper
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

  def contrast_color(color)
    rgbval = color.hex
    r = rgbval >> 16
    g = (rgbval & 652_80) >> 8
    b = rgbval & 255
    brightness = r * 0.299 + g * 0.587 + b * 0.114
    brightness > 160 ? 'dark-contrast' : 'light-contrast'
  end
end
