Rails.application.routes.draw do

  root to: "sites#index"

  resources :users, except: [:new]
  get "/sign_up", to: "users#new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  get "/logout", to: "sessions#destroy", as: "logout"
  
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
#   sign_up GET    /sign_up(.:format)        users#new
#     login GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create

