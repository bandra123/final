Rails.application.routes.draw do


  get '/' => 'recipe/index'
  
#--------------recipe related
  #create a new recipe
  get '/recipe/new' => 'recipe#new'
  post '/recipe' => 'recipe#create'

  #view the existing recipes
  get '/recipe' => 'recipe#list'
  get '/recipe/:id' => 'recipe#display'

  #edit existing recipes
  get '/recipe/:id/edit' => 'recipe#edit'
  patch '/recipe/:id' => 'recipe#update'



  #delete existing recipes
  delete '/recipe/:id' => 'recipe#destroy'


  #----------user related 

  #create a new user profile 
  get '/user/new' => 'user#new'
  post '/user' => 'user#create'

  #edit an existing user profile 
  get '/user/:id/edit' => 'user#edit'
  patch '/user/:id' => 'user#update'

  #delete an existing profile 
  delete '/user/:id' => 'user#destroy'









  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
