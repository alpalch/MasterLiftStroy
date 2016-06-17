Rails.application.routes.draw do
  root 'posts#index', as: 'index'
  resources :posts
end
