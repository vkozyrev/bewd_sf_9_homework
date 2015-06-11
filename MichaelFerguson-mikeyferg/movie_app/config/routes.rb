Rails.application.routes.draw do


  get 'home', to: "static_pages#home"
  get 'test', to: "static_pages#test"
  get 'about', to: "static_pages#about"

  resources :movies
  resources :reviews
  root 'static_pages#home'
end
