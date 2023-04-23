Rails.application.routes.draw do
  resources :assistances
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "assistances#index"
end
