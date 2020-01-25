Rails.application.routes.draw do
  resources :paints
  resources :user_steps
  resources :handers
  resources :blogcomments
  resources :postcomments
  resources :blogs

  resources :posts do 
    member { post :postlike }
  end
  
  resources :memberships
  resources :groups
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', :registrations => "registrations" }
  resources :users
  root to: "static_pages#home" 
  match '/home' , to: 'static_pages#home', via: 'get'
  match '/faq' , to: 'static_pages#faq', via: 'get'
  match '/thankyou' , to: 'static_pages#thankyou', via: 'get'
  match '/admindashboard' , to: 'static_pages#admindashboard', via: 'get'
  match '/aboutus', to: 'static_pages#aboutus', via: 'get'
  match '/follow' , to: 'relationships#follow', via: 'post'
  match '/unfollow' , to: 'relationships#unfollow', via: 'post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
