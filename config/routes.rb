Rails.application.routes.draw do
  root to: 'home#index'

  resources :doctors
  resources :pets
  resources :customers
  resources :appointments
  # route for appointment reminder
  get 'appointments/apt' => 'appointments#apt_reminder'

  get 'secretary/' => 'secretary#index'

end
