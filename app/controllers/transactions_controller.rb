class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    render 'index.json.jbuilder'
  end

  def create
    @transaction = Transaction.new(
                                    time: DateTime.now.to_s(:time),
                                    coin_id: params[:coin_id]
                                  )
    if @transaction.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @transactions.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
    render 'show.json.jbuilder'
  end

end
