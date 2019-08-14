Rails.application.routes.draw do
  get 'users/show'
  root 'users#show'

  get 'events/index'
  get 'events/new'
  post 'events/create'
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
