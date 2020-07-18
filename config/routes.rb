Rails.application.routes.draw do
  devise_for :users
  root 'thoughts#index'
  resources :thoughts
end
