Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  get '/sign-in' => 'sessions#new'
  delete '/sign-out' => 'sessions#destroy'
  get 'static/home'

  root 'static#home'
  resources :cats
end
