Rails.application.routes.draw do
  get 'home/index'
  resources :incomes
  resources :expenses
  get 'report/show'
  resources :categories
  devise_for :users # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { confirmations: 'confirmations' }
  root to: 'home#index'
end
