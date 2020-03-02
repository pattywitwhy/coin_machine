Rails.application.routes.draw do

  post "/coins" => "coins#create"
  patch "/coins/:id" => "coins#update"
  delete "/coins/:id" => "coins#destory"

end
