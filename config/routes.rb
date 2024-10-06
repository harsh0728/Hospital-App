Rails.application.routes.draw do
  devise_for :users
  
  root to: 'dashboards#index'

  get 'receptionist_dashboard', to: 'dashboards#receptionist'
  get 'doctor_dashboard', to: 'dashboards#doctor'

  resources :patients

  # other routes
end
