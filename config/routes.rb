Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :users do
    resources :profiles
  end

end
