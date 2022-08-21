Rails.application.routes.draw do
  devise_for :users
  root to: "gives#index"
  resources :gives, only:[:edit, :new]
  post 'gives/new' => 'gives#new'
  resources :gets, only:[:new, :edit]
  
end
