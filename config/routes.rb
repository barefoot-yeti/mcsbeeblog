Rails.application.routes.draw do
root "home#index"
  devise_for :users
  resources :home
  resources :contact
  resources :about
  resources :posts do
    resources :comments
  end
end
