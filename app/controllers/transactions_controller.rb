class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    render json: @transactions, status: :ok
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction, status: :ok
  end

  def create
    @transaction = Transaction.new(shares_params)
    if @transaction.save
      render json: @transaction, status: :created
    else
      render json: {errors: @transaction.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    render json: {}, status: :no_content
  end

  private

  def transactions_params
    params.permit(:user_id, :bought, :stock_symbol, :quantity, :transaction_total)
  end

end
