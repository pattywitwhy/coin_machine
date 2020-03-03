class UsersController < ApplicationController

  # def index

  #   HEADERS = {
  #                 "Accept" => "application/json",
  #                 "Authorization" => "Token token=#{ api_key }"
  #                 }

  # end

  def create
    @user = User.new(
                      api_key: api_key
                    )

    if user.save
      render json: {message: "User created successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end

  end
end
