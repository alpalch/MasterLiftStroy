Rails.application.routes.draw do
  root 'posts#index', as: 'index'
  resources :posts
  resources :photos

  devise_for :users
  devise_scope :user do
    get 'admin', to: 'devise/sessions#new'
    # Route to logout button
    post '/users/sign_out', to: 'devise/sessions#destroy'
  end

# Routes for main menu pages
  get 'lifts/shaft_lifts', as: 'shaft_lifts'
  get 'lifts/service_lifts', as: 'service_lifts'
  get 'lifts/tower_lifts', as: 'tower_lifts'
  get 'services/our_services', as: 'our_services'
  get 'contacts/contacts', as: 'contacts'
  get 'gallery/gallery', as: 'gallery'
  get 'gallery/new', to: 'photos#new'
end
