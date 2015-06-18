Rails.application.routes.draw do

  root "static_pages#home"
  resources :artists
  resources :songs
  resources :record_labels

  get 'static_pages/home'

end
