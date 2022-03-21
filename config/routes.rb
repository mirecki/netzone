# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  use_doorkeeper
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :api do
    namespace :v1 do
      resources :profile, only: [:index]
      resources :films, only: [:index]
    end
  end

  resources :film, only: %i[index show]
  resources :studios, only: %i[index show]
  resources :category, only: [:show]
  resources :search,    only: [:index]

  resource :cart, only: %i[destroy show] do
    resources :items, only: %i[destroy create]
  end

  root to: 'main#index'
end
