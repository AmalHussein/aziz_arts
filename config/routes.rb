AzizArts::Application.routes.draw do
  get "store/index"
  resources :carts

  devise_for :users
  root 'products#index'
  resources :products, only: [:index, :show]
  resources :transactions, only: [:new , :create]
 	#get '/cart', to: 'line_items#index', as: 'cart'
 	post '/products/:product_id/add_to_cart', to: 'line_items#create', as: 'add_product_to_cart'
 	#delete '/cart/:id', to: 'line_items#destroy', as: 'remove_product_from_cart'

end
