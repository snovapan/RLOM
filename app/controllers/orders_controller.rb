class OrdersController < ApplicationController
  before_action :set_user

  def index
  end

  def new
    @item = Item.find(new_order_params[:item_id])
    @quantity = new_order_params[:quantity]
  end
  
  def create
    @order = Order.new
    @order.user = current_user
    @order.item = Item.find(new_order_params[:item_id])
    @order.quantity = new_order_params[:quantity]
    
    # 检查余额
    if current_user.balance < @order.item.price
      flash[:error] = "余额不足"
      @item = @order.item
      @quantity = @order.quantity
      render :new
      return
    end

    if @order.save
      current_user.balance =((current_user.balance.to_f - @order.item.price.to_f )*100).round / 100.0
      current_user.save
      redirect_to orders_path
    else
      flash[:error] = "购买失败"
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private
  def new_order_params
    params.permit(:item_id, :quantity)
  end
end
