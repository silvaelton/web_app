Rails.application.routes.draw do
  root 'home#index'

  mount Candidate::Engine => '/candidato', as: :candidate
  mount Entity::Engine    => '/entidade',  as: :entidade
end
