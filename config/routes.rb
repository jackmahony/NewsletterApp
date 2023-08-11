Rails.application.routes.draw do
  resources :emails, only: [:new, :index, :create, :show]

  resources :templates


  root "emails#index"
end
