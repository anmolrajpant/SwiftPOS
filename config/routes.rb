Rails.application.routes.draw do
  get 'search/show'

  get 'report/daily'

  get 'report/weekly'

  get 'report/monthly'

  get 'report/topselling'

  get '/search', :to => 'search#show'
  post '/search', :to => 'search#show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :activities
  resources :sales
  resources :products
  devise_for :users
	 root 'sales#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
