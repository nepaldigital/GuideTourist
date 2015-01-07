Rails.application.routes.draw do

  resources :legalcountries

  resources :legaldescriptions

  resources :legalmasters

  resources :images

  resources :descriptions

  resources :secondaries

  ## Master route
  root 'master_view#index'

  get 'master_view/index' => 'master_view#index'
  get 'master_view/new' => 'master_view#new'
  post 'master_view/create' => 'master_view#create', as: :masters
  get 'master_view/show/:id' => 'master_view#show', as: :master_show
  delete 'master_view/:id' => 'master_view#delete', as: :masters_delete
  get 'master_view/:id/edit' => 'master_view#edit', as: :master_edit
  patch 'master_view/:id/edit' => 'master_view#update', as: :master_update

  ## Master Secondary route
  get 'masters/:id/secondaries/new' => 'secondaries#master_new', as: :master_secondary_new
  post 'masters/:id/secondaries/create' => 'secondaries#master_create', as: :master_secondary_create
  get 'masters/:id/secondaries/index' => 'secondaries#secondary_index', as: :master_secondary_index

   
  ## Search Route
  post '/search' => 'master_view#search'
 
  #get '/check_name' => 'master_view#check_name'

  ## secondary description route
  
  get 'secondaries/:id/descriptions/new' => 'descriptions#secondary_new', as: :secondary_description_new
  post 'secondaries/:id/descriptions/create'=> 'descriptions#secondary_create', as: :secondary_description_create
  get 'secondaries/:id/descriptions/index' => 'descriptions#description_index', as: :secondary_description_index

  ##descriptionn image route
  get 'descriptions/:id/images/new' => 'images#description_new', as: :description_image_new
  post 'descriptions/:id/images/create'=> 'images#description_create', as: :discription_image_create
  get 'descriptions/:id/images/index' => 'images#image_index', as: :description_image_index
  get 'descriptions/:id/images/show' => 'images#description_show', as: :description_image_show
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  #if needec can change root to masterprevious session project by removing '#' of (root 'master_view#index')
  #root 'master_view#index'

#making root for legal master table

match ':controller(/:action(/:id))', :via => :get
#master routes
## Master route
  # get 'legalmasters/index' => 'legalmasters#index'
  # get 'legalmasters/new' => 'legalmasters#new'
  # post 'legalmasters/create' => 'legalmasters#create', as: :legalmasters
  # get 'legalmasters/show/:id' => 'legalmasters#show', as: :legalmasters_show
  # destroy 'legalmasters/:id' => 'legalmasters#destroy', as: :legalmasters_destroy
  # get 'legalmasters/:id/edit' => 'legalmasters#edit', as: :legalmasters_edit
  # patch 'legalmasters/:id/edit' => 'legalmasters#update', as: :legalmasters_update

# match ‘/masters/check_name’, :controller => ‘masters’, :action => ‘check_name’
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
