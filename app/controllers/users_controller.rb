class UsersController < ApplicationController

  def create
    @user = User.new(
                      api_key: params[:api_key]
                    )
    if @user.save!
      jwt = User.encode({user: user.id})
      # render json: {jwt: jwt}
      render json: {message: "User created successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
