Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'pokemons/capture', to: 'pokemons#capture', as: 'capture'

end
