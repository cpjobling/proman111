ActionController::Routing::Routes.draw do |map|
  map.resources :news_articles

  
  map.root :controller => "home", :action => 'index'

  map.resources :users

  map.resource :session

  
  map.connect 'projects/by_supervisor', 
    :conditions => { :method => :get },
    :controller => "projects",
    :action => "by_supervisor"
    
  map.connect 'projects/by_discipline', 
    :conditions => { :method => :get },
    :controller => "projects",
    :action => "by_discipline"
    
  map.connect 'projects/by_centre', 
    :conditions => { :method => :get },
    :controller => "projects",
    :action => "by_centre"
    
  map.connect 'my_projects', 
    :conditions => { :method => :get },
    :controller => "projects",
    :action => "my_projects"
    
  map.connect 'allocate',
    :conditions => { :method => :put },
    :controller => "projects",
    :action => "allocate"
    
  map.resources :projects
  

  map.resources :students
 
  
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login '/login', :controller => 'session', :action => 'new'
  map.logout '/logout', :controller => 'session', :action => 'destroy'
  
  map.gate '/gate', :controller => 'gate', :action => 'index'

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
