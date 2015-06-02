Rails.application.routes.draw do
  resources :secret_numbers, only: [:show, :new]
  resources :rps_games, only: [:show, :new]
  resources :games, only: [:index]

  root "games#index"
end
