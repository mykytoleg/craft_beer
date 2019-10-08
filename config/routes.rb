# frozen_string_literal: true

Rails.application.routes.draw do
  get '/breweries', to: 'brewery#index'
  get '/cities', to: 'city#index'
  get '/states', to: 'state#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
