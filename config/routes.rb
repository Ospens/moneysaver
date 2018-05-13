Rails.application.routes.draw do
  resources :income_categories
  root 'dashboard#index'
  resources :categories, :dashboard, :operations, :budgets, :positive_operations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
