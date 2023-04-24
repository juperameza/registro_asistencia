Rails.application.routes.draw do
  resources :asistencia
  resources :alumnos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "alumnos#index"
end
