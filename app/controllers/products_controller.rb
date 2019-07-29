class ProductsController < ApplicationController
  before_action  :set_product, only: [:show, :edit, :destroy, :update]
  
  # GET /products
  def index
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
  end

  # DELETE /products/1
  def destroy
  end

  # PUT /products/1
  def update
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

end
