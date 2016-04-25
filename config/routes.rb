Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users
  resources :profiles
  resources :teams

end
