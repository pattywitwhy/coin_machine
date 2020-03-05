Rails.application.routes.draw do

  get "/coins" => "coins#index"
  post "/coins" => "coins#create"
  get "/coins/:id" => "coins#show"
  patch "/coins/:id" => "coins#update"
  delete "/coins/:id" => "coins#destroy"

  get "/transactions" => "transactions#index"
  post "/transactions" => "transactions#create"
  get "/transactions/:id" => "transactions#show"
  patch "/transactions/:id" => "transactions#update"

  post "/users" => "users#create"

  get "/withdrawals" => "withdrawals#index"
  post "/withdrawals" => "withdrawals#create"
  get "/withdrawals/:id" => "withdrawals#show"

end
