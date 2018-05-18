module AccountsHelper
  def calc_balance(account)
    positive_sum = account.incomes_operations.pluck(:value).inject(0){ |result, elem| result + elem }
    negative_sum = account.costs_operations.pluck(:value).inject(0){ |result, elem| result + elem }
    account.balance + positive_sum - negative_sum
  end
end
