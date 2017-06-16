Rails.application.routes.draw do
  devise_for :users

  namespace :account do
    resources :orders
  end

  resources :cart_items

  resources :orders

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :products do
    member do
      post :add_to_cart
    end
  end

  namespace :admin do
    resources :products do
      member do
        patch :move_up
        patch :move_down
      end
    end
  end

  root 'welcome#index'
end
