Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  post 'capture/:id' => 'pokemon#capture'
end
