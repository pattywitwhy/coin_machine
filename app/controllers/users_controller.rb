class UsersController < ApplicationController
  # include ActionController::HttpAuthentication::Token::ControllerMethods

  # def authenticate
  #   authenticate_token || render_unauthorized
  # end

  # def authenticate_token
  #   authenticate_with_http_token do |token, options|
  #     @current_user = User.find_by(api_key: token)
  #   end
  # end

  # def render_unauthorized(realm = "Application")
  #   self.headers["WWW-Authenticate"] = %(Token realm="#{realm}")
  #   render json: 'Bad credentials', status: :unauthorized
  # end

  def create
    # HEADERS = {
    #               "Accept" => "application/json",
    #               "Authorization" => "Token token=#{ api_key }"
    #               }

    @user = User.new(
                      api_key: api_key
                    )

    if user.save!
      render json: {message: "User created successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end

  end
end
