Rails.application.routes.draw do
  root "users#signup"

  get 'users/login'

  get 'users/signup', to: "users#signup"

  resources :users, has_many: :reviews
  resources :destinations, has_many: :reviews
  resources :itineraries, has_many: :reviews

  post '/itineraries/:itinerary_id/reviews/create' => 'reviews#add', as: :itinerary_reviews



#                Prefix Verb   URI Pattern                      Controller#Action
#         reviews_add GET    /reviews/add(.:format)           reviews#add
#      reviews_delete GET    /reviews/delete(.:format)        reviews#delete
#        reviews_edit GET    /reviews/edit(.:format)          reviews#edit
#        reviews_show GET    /reviews/show(.:format)          reviews#show
#    destinations_add GET    /destinations/add(.:format)      destinations#add
#   destinations_edit GET    /destinations/edit(.:format)     destinations#edit
# destinations_delete GET    /destinations/delete(.:format)   destinations#delete
#   destinations_show GET    /destinations/show(.:format)     destinations#show
#   itineraries_index GET    /itineraries/index(.:format)     itineraries#index
#    itineraries_edit GET    /itineraries/edit(.:format)      itineraries#edit
#    itineraries_show GET    /itineraries/show(.:format)      itineraries#show
#     itineraries_add GET    /itineraries/add(.:format)       itineraries#add
#  itineraries_delete GET    /itineraries/delete(.:format)    itineraries#delete
#         users_login GET    /users/login(.:format)           users#login
#        users_signup GET    /users/signup(.:format)          users#signup
#               users GET    /users(.:format)                 users#index {:has_many=>:reviews}
#                     POST   /users(.:format)                 users#create {:has_many=>:reviews}
#            new_user GET    /users/new(.:format)             users#new {:has_many=>:reviews}
#           edit_user GET    /users/:id/edit(.:format)        users#edit {:has_many=>:reviews}
#                user GET    /users/:id(.:format)             users#show {:has_many=>:reviews}
#                     PATCH  /users/:id(.:format)             users#update {:has_many=>:reviews}
#                     PUT    /users/:id(.:format)             users#update {:has_many=>:reviews}
#                     DELETE /users/:id(.:format)             users#destroy {:has_many=>:reviews}
#        destinations GET    /destinations(.:format)          destinations#index {:has_many=>:reviews}
#                     POST   /destinations(.:format)          destinations#create {:has_many=>:reviews}
#     new_destination GET    /destinations/new(.:format)      destinations#new {:has_many=>:reviews}
#    edit_destination GET    /destinations/:id/edit(.:format) destinations#edit {:has_many=>:reviews}
#         destination GET    /destinations/:id(.:format)      destinations#show {:has_many=>:reviews}
#                     PATCH  /destinations/:id(.:format)      destinations#update {:has_many=>:reviews}
#                     PUT    /destinations/:id(.:format)      destinations#update {:has_many=>:reviews}
#                     DELETE /destinations/:id(.:format)      destinations#destroy {:has_many=>:reviews}
#         itineraries GET    /itineraries(.:format)           itineraries#index {:has_many=>:reviews}
#                     POST   /itineraries(.:format)           itineraries#create {:has_many=>:reviews}
#       new_itinerary GET    /itineraries/new(.:format)       itineraries#new {:has_many=>:reviews}
#      edit_itinerary GET    /itineraries/:id/edit(.:format)  itineraries#edit {:has_many=>:reviews}
#           itinerary GET    /itineraries/:id(.:format)       itineraries#show {:has_many=>:reviews}
#                     PATCH  /itineraries/:id(.:format)       itineraries#update {:has_many=>:reviews}
#                     PUT    /itineraries/:id(.:format)       itineraries#update {:has_many=>:reviews}
#                     DELETE /itineraries/:id(.:format)       itineraries#destroy {:has_many=>:reviews}

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
