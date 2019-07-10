class CommentsController < ApplicationController
  before_action :set_user, :set_item

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.user = @user
    @comment.item = @item
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
    @comments = Comment.find_by(item_id: @item)
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
  def set_item
    @item = Item.find(params[:item_id])
  end
end
