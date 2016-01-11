Rails.application.routes.draw do
  root to: 'home#index'

  resources :doctors
  resources :pets
  resources :customers
  resources :appointments
  # route for appointment reminder
  get 'appointments/apt' => 'appointments#apt_reminder'

  # Custom Routes for Navigation
  get 'navigation/' => 'navigation#index'
  get 'navigation/customers' => 'navigation#customer'
  get 'navigation/doctors' => 'navigation#doctor'
  get 'navigation/secretaries' => 'navigation#secretary'
  get 'navigation/admins' => 'navigation#admin'

end
