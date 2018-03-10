Rails.application.routes.draw do
  resource :user do
    resources :firearms, shallow: true
  end
  resource :barrels
  resource :outings
 
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
end
