Rails.application.routes.draw do

  root "landing#index"

  get "/home" => "home#index"

  post "/home" => "home#create"

  post "/upvote/:id" => "home#add_upvote"

  post "/downvote/:id" => "home#add_downvote"

  post "/comment" => "home#create_comment"

  delete "/DELETE/:id" => "home#destroy"

  get 'signup' => "users#new"

  post 'signup' => "users#create"

  get "login" => 'sessions#new'

  post "login" => 'sessions#create'

  get "/profile" => 'profile#index'

  delete "logout" => 'sessions#destroy'

  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
