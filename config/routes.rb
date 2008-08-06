ActionController::Routing::Routes.draw do |map|
 
 map.admin_login 'admin', :controller => 'admin', :action => 'index'
 map.admin_login 'admin/login', :controller => 'admin', :action => 'login'
 map.admin_logout 'admin/logout', :controller => 'admin', :action => 'logout'
 

 map.resources :countries, :has_many  => :cities
 # map.resources :cities

  map.with_options :path_prefix => ':lang', :lang => /ru|en/, :name_prefix => 'lang_' do |l|
    l.resources :pages
    l.resources :countries, :has_many  => :cities
    l.resources :cities, :has_many => :opinions
    l.resources :cities, :has_many => :members
    l.resources :opinions
    l.resources :members, :has_many => :member_statuses
    l.resources :member_statuses, :has_many => :members
  end
  map.resources :pages
  map.resources :countries, :has_many  => :cities
  map.resources :cities, :has_many => :opinions
  map.resources :cities, :has_many => :members
  map.resources :opinions
  map.resources :members, :has_many => :member_statuses
  map.resources :member_statuses, :has_many => :members

  map.with_options :controller => "pages" do |page|
    page.home "/", :action =>  "home"
    ["about_us","contacts","faq","charity","founder","team","mission","principles"].each do |action|  page.home "/#{action}", :action =>action   end
    page.home ":lang/", :action =>  "home", :lang => /ru|en/
    page.home ":lang/:action"

  end

  

  

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

  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

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
