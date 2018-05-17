Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: [ :index, :show, :new, :create ]
end
