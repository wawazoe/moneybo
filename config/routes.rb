Rails.application.routes.draw do
  devise_for :users
  root to: "gives#index"
  resources :gives, only:[:edit, :create]
  post 'gives/new', to: 'gives#new'
  #post
  #post 'gives/new' => 'gives#new'
  resources :gets, only:[:edit, :create]
  post 'gets/new', to: 'gets#new'
end
