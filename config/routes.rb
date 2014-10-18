Rails.application.routes.draw do
  
  resources :user

  root 'static_pages#home'
end
