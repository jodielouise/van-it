Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'dashboard/index'

  get 'landing_page/show'
  authenticated :user do
    root :to => "dashboard#index"
  end
  
  root to: 'landing_page#show'
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end