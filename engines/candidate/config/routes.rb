Candidate::Engine.routes.draw do
  root 'home#index'

  resources :sessions, only: [:new, :create, :destroy]

  resources :cadastres
  resources :notifications

  namespace :attendance do 
    resources :tickets do 
      resources :steps, controller: :ticket_steps do 
        resources :cadastres
      end
    end
  end
end
