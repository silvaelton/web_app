Candidate::Engine.routes.draw do
  root 'dashboard#index'

  resources :cadastres, only: [:show]
end
