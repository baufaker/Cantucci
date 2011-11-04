Cantucci::Application.routes.draw do
    
  resources :enquetes

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  delete '/admin/mensagem_usuarios/:id(.:format)', :action => 'destroy', :controller => 'admin/mensagem_usuarios', :as => :destroy_admin_mensagem_usuario
  
  match '/vinhos/' => 'vinhos#index', :as => :vinhos
  
  get '/contato' => 'mensagem_usuarios#new', :as => :contato

  post '/contato' => 'mensagem_usuarios#create', :as  => :mensagem_usuarios
    
  match '/cardapio/' => 'cardapio_elementos#index', :as => :cardapio
  
  match '/resultado_enquete/' => 'enquetes#resultado', :as => :resultado

  match '/enquete/' => 'enquetes#iago', :as => :enquete
  
  match '/agenda/' => 'eventos#index', :as => :agenda
  
  put '/resultado_enquete/' => "enquetes#update", :as => :update
  
  root :to => "vinhos#index"
  
  match 'frontend/:template' => 'frontend#show', as: :frontend
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
