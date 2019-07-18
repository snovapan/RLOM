class SiteController < ApplicationController
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
      redirect_to @item
    else
      flash[:error] = "添加失败"
      render :new
    end
  end

  def edit
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :stock, :description, :image)
  end
end
