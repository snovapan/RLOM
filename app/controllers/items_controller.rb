class ItemsController < ApplicationController
  def show
    @item = Item.find_by(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
  end

  def create
  end

  def edit
  end
end
