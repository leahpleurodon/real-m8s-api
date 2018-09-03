# frozen_string_literal: true

Rails.application.routes.draw do
  resources :house_users
  resources :houses
  resources :users
  resources :user_pets
  resources :mate_reviews
  resources :mate_profiles, except: %i[index destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
