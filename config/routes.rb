Rails.application.routes.draw do

  root to: "sites#index"

  resources :users, except: [:new]
  resources :posts
  
  get "/sign_up", to: "users#new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  get "/logout", to: "sessions#destroy", as: "logout"

  get "/city/:id", to: "cities#show", as: "city"
  get "/cities", to: "cities#index"
  
end



#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         sites#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
#   sign_up GET    /sign_up(.:format)        users#new
#     login GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create
#    logout GET    /logout(.:format)         sessions#destroy
