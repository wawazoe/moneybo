Rails.application.routes.draw do
  devise_for :users
  root to: "gives#index"
  resources :gives, only:[:new, :edit, :create]
  post 'gives/new', to: 'gives#new'
  get 'gives/edit', to: 'gives#edit'
  resources :gets, only:[:new, :edit, :create]
  post 'gets/new', to: 'gets#new'
  post 'gets/edit', to: 'gets#edit'
end
