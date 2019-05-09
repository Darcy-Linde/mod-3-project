class SharesController < ApplicationController

  def index
    @shares = Share.all
    render json: @shares, status: :ok
  end

  def show
    @share = Share.find(params[:id])
    render json: @share, status: :ok
  end

  def create
    @share = Share.new(shares_params)
    if @share.save
      render json: @share, status: :created
    else
      render json: {errors: @share.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    @share = Share.find(params[:id])
    @share.destroy
    render json: {}, status: :no_content
  end

  private

  def shares_params
    params.permit(:user_id, :stock_symbol, :purchase_value)
  end

end
