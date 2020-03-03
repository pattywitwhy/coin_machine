Rails.application.routes.draw do

  get "/coins" => "coins#index"
  post "/coins" => "coins#create"
  get "/coins" => "coins#show"
  patch "/coins/:id" => "coins#update"
  delete "/coins/:id" => "coins#destroy"

  get "/transactions" => "transactions#index"
  post "/transactions" => "transactions#create"
  get "/transactions/:id" => "transactions#show"

  post "/users" => "users#create"

end
