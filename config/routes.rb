Rails.application.routes.draw do
  devise_for :users
  root "categories#index"
  resources :categories do
     resources :transactions
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
