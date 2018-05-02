Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get "dashboard", to: "posts#dashboard"
  get "blog", to: "pages#blog"
  resources :posts
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
