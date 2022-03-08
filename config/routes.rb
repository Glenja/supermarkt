Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create] do
    resources :lists, only: [:index, :show, :update, :create, :new] do
      resources :items, only: [:index, :create, :update, :destroy]
    end
  end
  get "/items/:id", to: "items#mark_done", as: :mark_as_done

  resources :households, only: [:new, :create, :show, :edit, :update] do
    resources :orders, only: [:index, :show, :new, :create] do
      resources :lists, only: [:new, :create]
    end
    get "map", to: 'households#map', as: :map
    get 'map/supermarket/:id', to: 'households#route', as: :route
  end
end
