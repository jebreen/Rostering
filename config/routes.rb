Rails.application.routes.draw do
  resources :allocations
  resources :shifts
  resources :blocks
  resources :staffs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
