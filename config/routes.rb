Rails.application.routes.draw do

  get "/coins" => "coins#index"
  post "/coins" => "coins#create"
  get "/coins" => "coins#show"
  patch "/coins/:id" => "coins#update"
  delete "/coins/:id" => "coins#destroy"

end
