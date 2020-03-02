class CoinsController < ApplicationController
  def index
    @coins = Coin.all
    render 'index.json.jbuilder'
  end

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

  def show
    @coin = Coin.find(params[:id])
    @coin.calculate_total
    render 'show.json.jbuilder'
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
