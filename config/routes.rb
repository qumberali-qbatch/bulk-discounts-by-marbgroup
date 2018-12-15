Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # root :to => 'sale#index'
  get 'auth/shopify/callback', :to => 'sale#authenticate'
  get 'sale/show'
  root to: "dashboard#index"
  post 'edit_products_price' => 'products#edit_products_price'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
