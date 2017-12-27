Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :books do
  	resources :bokks, only: [:index, :edit, :update, :new, :create]

  end

  root "home#index"

end
