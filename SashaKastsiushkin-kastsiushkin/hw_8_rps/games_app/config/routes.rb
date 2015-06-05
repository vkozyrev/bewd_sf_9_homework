Rails.application.routes.draw do
  resources :secret_numbers, only: [:show, :new]
  resources :games, only: [:index]
  resources :rock_paper_scissors, only: [:show, :new]
  root "games#index"
end
