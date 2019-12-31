Rails.application.routes.draw do
  resources :blogcomments
  resources :postcomments
  resources :blogs
  resources :posts
  resources :memberships
  resources :groups
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users
  root to: "static_pages#home" 
  match '/home' , to: 'static_pages#home', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
