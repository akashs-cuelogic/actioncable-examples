Rails.application.routes.draw do
  resources :notifications
  resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  root 'examples#index'
end
