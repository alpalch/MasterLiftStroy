Rails.application.routes.draw do
  root 'posts#index', as: 'index'
  resources :posts

  devise_for :users
  devise_scope :user do
    get 'users/admin', to: 'devise/session#new'
    # Route to logout button
    get '/users/sign_out', to: 'sessions#destroy'
  end
end
