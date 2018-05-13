Rails.application.routes.draw do
  root 'dashboard#index'
  resources :categories, :dashboard, :operations, :budgets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
