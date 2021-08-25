Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:show, :new, :create] do
    resources :menu_items, only: [:show, :index]
  end

  resources :orders, only: [:show, :new, :update] do
    resources :order_items
  end
end
