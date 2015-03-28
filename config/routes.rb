Rails.application.routes.draw do


  devise_for :users

  # Deep Nesting to be avoided!!
  # resources :projects do
  #   resources :designs
  #    resources :reviews, except: [:show, :index]
  # end

  # Shallow nesting of resources: 
  resources :projects do
    resources :designs, only: [:index, :new, :create]
  end
  resources :designs, only: [:show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:edit, :update, :destroy]
  
  root 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/FAQ'

  get 'myprojects' => "projects#customer"

  get 'active-posts' => "designs#active_posts"

  get 'submitted-designs' => "designs#submitted_designs"


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
