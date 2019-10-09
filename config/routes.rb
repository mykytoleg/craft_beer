# frozen_string_literal: true

Rails.application.routes.draw do
  get '/beers', to: 'beer#index'
  get '/beers/:id', to: 'beer#show', id: /\d+/, as: :beer

  get '/breweries', to: 'brewery#index'
  get '/cities', to: 'city#index'
  get '/states', to: 'state#index'

  get '/pages/:page', to: 'pages#show'

  root to: 'beer#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
