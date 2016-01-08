Rails.application.routes.draw do
  root to: 'home#index'

  resources :doctors
  resources :pets
  resources :customers
  resources :appointments

end
