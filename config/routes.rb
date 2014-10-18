Rails.application.routes.draw do
  
  resources :users do

    collection do
      get '/sign_up', to: 'users#new', as: :sign_up
      get '/success', to: 'users#success', as: :success
    end
  end
  root 'static_pages#home'
end
