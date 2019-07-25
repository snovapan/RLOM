class Admin::ItemsController < ApplicationController

  before_action :require_admin
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
    @item.destroy
    flash[:success] = "删除商品成功"
    redirect_to :items
  end
  private
  def item_params
    params.require(:item).permit(:name, :price, :stock, :description, :image)
  end

  def require_admin
    message = "等待开发管理员验证"
  end
end
