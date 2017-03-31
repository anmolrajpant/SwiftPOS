Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :inventories do
    resources :sale
  end
  devise_for :users
  namespace :admin do
    resources :managers
	resources :staffs

    root to: "admins#index"
  end

  root 'sale#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
