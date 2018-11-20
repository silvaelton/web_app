Common::Engine.routes.draw do

  resources :schedules,    path: 'agendamentos'
  
  resources :requeriments, path: 'requerimentos' do 
    get 'search', on: :collection
  end

  resources :noticies,     path: 'noticias'
end
