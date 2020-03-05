class WithdrawalsController < ApplicationController
  def index
    @withdrawals = Withdrawal.all
    render 'index.json.jbuilder'
  end

  def create
    @withdrawal = Withdrawal.new(
                                coin_id: params[:coin_id],
                                transaction_id: params[:transaction_id]
                                )

    if @withdrawal.save
      # @withdrawal.update()
      render 'show.json.jbuilder'
    else
      render json: {errors: @withdrawal.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @withdrawal = Withdrawal.find_by(params[:id])
    render 'show.json.jbuilder'
  end

end
