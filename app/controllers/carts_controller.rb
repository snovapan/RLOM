class CartsController < ApplicationController
  before_action :set_user

  def index
    @carts = current_user.cart_items.all
  end

  def new
    @item = Item.find(new_cart_params[:item_id])
    @quantity = new_cart_params[:quantity]
  end
  
  def create
    @cart_item = CartItem.new
    @cart_item.user = current_user
    @cart_item.item = Item.find(new_cart_params[:item_id])
    @cart_item.quantity = new_cart_params[:quantity]
    if @cart_item.save
      redirect_to carts_path
    else
      flash[:error] = "添加失败"
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
  def new_cart_params
    params.permit(:item_id, :quantity)
  end
end
