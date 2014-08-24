Manavi::Application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'homepage#index'

  resources :pages, only: :show
  get '/pages/*categories/:id', to: 'pages#show'
  get '/pages/*actus/:id', to: 'pages#show'
  get 'listproduct/listproduct' => 'listproduct#listproduct'
  get 'product/pageproduct' => 'product#pageproduct'
  get 'company/company' => 'company#company'
  
  get 'connect/login' => 'connect#login'
  get 'connect/myaccount' => 'connect#myaccount'
  get 'connect/command' => 'connect#command'
  get 'connect/carnetadresse' => 'connect#carnetadresse'
  get 'connect/favoris' => 'connect#favoris'
  get 'connect/motdepasse' => 'connect#motdepasse'
  get 'connect/coordonnee' => 'connect#coordonnee'
  get 'connect/updateadresse' => 'connect#updateadresse'
  get 'connect/addadresse' => 'connect#addadresse'
  
  get 'actunew/listactu' => 'actunew#listactu'
  get 'actunew/actu' => 'actunew#actu'
  
  get 'card/card' => 'card#card'
  get 'card/coordonnee' => 'card#coordonnee'
  get 'card/livraison' => 'card#livraison'  
  get 'card/paiement' => 'card#paiement'
  get 'card/confirmation' => 'card#confirmation'
  get 'card/addadresse' => 'card#addadresse'
  
  get 'listproducer/listproducer' => 'listproducer#listproducer'
  get 'producer/pageproducer' => 'producer#pageproducer'
  
  get 'backoffice/index' => 'backoffice#index'
  get 'backoffice/command' => 'backoffice#command'
  get 'backoffice/product' => 'backoffice#product'
  get 'backoffice/addproduct' => 'backoffice#addproduct'
  get 'backoffice/category' => 'backoffice#category'
  get 'backoffice/addcategory' => 'backoffice#addcategory'
  get 'backoffice/url' => 'backoffice#url'
  get 'backoffice/addurl' => 'backoffice#addurl'
  
  
  namespace :admin do
    root "dashboard#index"
    resource :dashboard, only: :index
    resources :actus, only: [:index, :new, :create, :destroy]
    resources :categories, only: [:index, :new, :create, :destroy]
  end

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
