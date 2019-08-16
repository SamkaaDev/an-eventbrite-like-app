Rails.application.routes.draw do
 
  root 'events#index'


  resources :events

  resources :events do
  	resources :attendances, only: [:new, :create, :index]
  end
  
  resources :profile, only: [:show, :edit, :update]
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
