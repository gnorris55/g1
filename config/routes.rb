Rails.application.routes.draw do
  root 'thought#index'
  resources :thoughts
end
