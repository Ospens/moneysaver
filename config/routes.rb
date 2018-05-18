Rails.application.routes.draw do
  root 'dashboard#index'
  resources :accounts,
            :costs_categories,
            :incomes_categories,
            :costs_operations,
            :incomes_operations,
            :dashboard

end
