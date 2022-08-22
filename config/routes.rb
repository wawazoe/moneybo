Rails.application.routes.draw do
  devise_for :users
  root to: "gives#index"
  resources :gives, only:[:edit, :new, :create]
  post 'gives/new' => 'gives#new'
  resources :gets, only:[:new, :edit, :create]
  
end
