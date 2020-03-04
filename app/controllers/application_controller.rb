class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  # before_action :restrict_access

  # def current_user
  #   @current_user ||= User.find_by(api_key: params[:api_key])
  # end

  # private
  
  # def restrict_access
  #   # authenticate_or_request_with_http_token do |api_key, options|
  #   #   User.find_by(
  #   #                api_key: api_key
  #   #                )
  #   # end
  #   unless current_user
  #     render json: {}, status: :unauthorized
  #   end
  # end

end
