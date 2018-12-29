Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'

  resources :articles

  # passing the classes defined in the models to the routes generates a route for each HTTP method available to that class
end
