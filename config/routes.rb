Rails.application.routes.draw do
  get 'sessions/new'
  get 'secrets/show'

  root 'application#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
