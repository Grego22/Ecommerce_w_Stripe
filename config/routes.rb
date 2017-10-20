Rails.application.routes.draw do
  ActiveAdmin.routes(self)
   devise_for :admin_users, ActiveAdmin::Devise.config
  root 'pages#home'
  resources :charges
  resources :purchases, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
