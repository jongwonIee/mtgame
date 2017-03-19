Rails.application.routes.draw do
  get 'mafias/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :combinations
  resources :words
  resources :chaoses
  resources :marbles
  resources :teams
  post 'match', to: 'teams#match'
  post 'add', to: 'teams#add'
  get 'penalties', to: 'penalties#index'
  get 'penalty', to: 'penalties#show'
  post '/combinations/:id', to: 'combinations#show'
  root 'teams#index'
  get 'mafias', to: 'mafias#index'

end
