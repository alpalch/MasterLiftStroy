Rails.application.routes.draw do
  root 'posts#index', as: 'index'
  resources :posts

  devise_for :users
  devise_scope :user do
    get 'users/admin', to: 'devise/sessions#new'
    # Route to logout button
    post '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
