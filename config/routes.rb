Rails.application.routes.draw do
  
  resources :users do
    collection do
      get '/sign_up', to: 'users#new', as: :sign_up
      get '/sign_in', to: 'user_sessions#new', as: :sign_in
      get '/success', to: 'static_pages#success', as: :success
      get '/error', to: 'static_pages#error', as: :error
    end
  end

  get '/feed', to: 'static_pages#feed'
  
  root 'static_pages#home'
end
