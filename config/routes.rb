Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    post 'users/login', to: 'users#login'
    post 'sign_up', to: 'users#create', as: :sign_up
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
