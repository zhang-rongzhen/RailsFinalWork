Rails.application.routes.draw do

  get 'comments/index'
  get 'comment/index'
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'myfinalwork#index'
  resources :restaurant, only: [:index, :show]
  resources :comments
  

end
