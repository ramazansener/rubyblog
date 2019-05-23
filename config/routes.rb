Rails.application.routes.draw do
  resources :iletisims
  resources :hakkindas
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :yazilars
  root 'yazilars#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
