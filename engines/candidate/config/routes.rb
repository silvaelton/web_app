Candidate::Engine.routes.draw do
  root 'home#index'

  resources :sessions, only: [:new, :create, :destroy]

  resources :cadastres
  resources :notifications

end
