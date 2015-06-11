Rails.application.routes.draw do
  resources :movies
  resources :reviews
  root 'movies#index'
end
