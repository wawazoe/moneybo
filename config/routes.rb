Rails.application.routes.draw do
  devise_for :users
  root to: "gives#index"
  resources :gives, only: :edit
  
end
