Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'nav_pages#index', as: 'root_welcome'
  get '/welcome', to: 'nav_pages#index', as: 'welcome'
  # get 'businesses', action: :index, controller: 'businesses'
  resources :businesses
  
end
