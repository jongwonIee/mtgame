Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :combinations
  resources :words
  resources :chaoses
  resources :marbles
  resources :teams
  post '/combinations/:id', to: 'courses#show', as: 'show'
  root 'teams#index'

end
