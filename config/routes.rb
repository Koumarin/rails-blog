Rails.application.routes.draw do
  root "articles#index"

  get '/blog/:id/', to: 'users#show'

  resources :articles do
    resources :comments
  end

  devise_for :users
end
