# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,  
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/movies' => 'movie#index'
  get '/movie/:id', to: 'movie#show'
  patch '/movies', to: 'movie#create'
end
