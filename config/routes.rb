Rails.application.routes.draw do
  resources :client_categories
  resources :categories
  resources :clients
  resources :potential_clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
