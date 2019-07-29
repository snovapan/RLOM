class CommentsController < ApplicationController
  before_action :set_user, :set_product

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.user = @user
    @comment.product = @product
    @comment.body = comment_params[:body]
    if @comment.save
      flash[:success] = "添加评论成功"
      render :show
    else
      flash[:error] = "添加评论失败"
      render :new
    end
  end

  def show
    @comments = Comment.find_by(product_id: @product)
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
  def set_product
    @product = Product.find(params[:product_id])
  end
end
