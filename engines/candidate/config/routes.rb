Candidate::Engine.routes.draw do
  root 'home#index'

  resources :cadastres
  resources :notifications
end
