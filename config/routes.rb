Rails.application.routes.draw do
  get 'static/home'

  root 'static#home'
  resources :cats
end
