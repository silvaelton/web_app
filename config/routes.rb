Rails.application.routes.draw do
  root 'home#index'

  mount Candidate::Engine => '/candidato', as: :candidate
  mount Entity::Engine    => '/entidade',  as: :entidade
  mount Common::Engine    => '/externo',   as: :common
end
