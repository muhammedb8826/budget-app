Rails.application.routes.draw do
  devise_for :users
  root "splash_screen#index"
  resources :categories do
    resources :deals, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
