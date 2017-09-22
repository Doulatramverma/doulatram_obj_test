Rails.application.routes.draw do
  resources :questions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  resources :tests
  resources :tanswers
  root to: 'tests#index'

  #get 'welcome/index'
  #root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
