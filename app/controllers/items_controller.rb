class ItemsController < ApplicationController
  before_action :set_user

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :items
    else
      flash[:error] = "添加失败"
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to :items
    else
      flash[:error] = "编辑失败"
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    redirect_to :items
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :stock, :description, :image)
  end


end
