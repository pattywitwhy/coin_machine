class CoinsController < ApplicationController
  def create
    @coin = Coin.new(
                    value: params[:value],
                    name: params[:name]
                    )
    if @coin.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @coin.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @coin = Coin.find(params[:id])

    @coin.value = params[:value] || @coin.value
    @coin.name = params[:name] || @coin.name

    if @coin.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @coin.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @coin = Coin.find(params[:id])
    @coin.delete

    render json: {message: "Sucessfully removed coin"}
  end
end
