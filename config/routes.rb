Rails.application.routes.draw do
  
  resources :users do

    collection do
      get '/sign_up', to: 'users#new', as: :sign_up
      get '/success', to: 'static_pages#success', as: :success
      get '/error', to: 'static_pages#error', as: :error
    end
  end
  root 'static_pages#home'
end
