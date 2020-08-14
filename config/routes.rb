# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug
      resources :reviews, on: %i[create destroy]
    end
  end

  get '*patch', to: 'pages#index', via: :all
end
