Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create]
  get "/users/me/friends", to: "friendships#list_my_friends"
  post "/users/:email(.:domain)/friendship", to: "friendships#add_friend"
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
