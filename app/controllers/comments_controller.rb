class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all 
  end

  def show
  end

  def new
    @comment = Comment.new
   end
  
  def edit
  end

  def update
    @comment.update(comment_params)
    if @comment.save
      redirect_to comment_path(@comment)
    else
      render :edit
    end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comment_path(@comment)
    else
      render :new
    end
  end

  def destroy
    @comment.delete
    redirect_to comments_path
  end

  private
    def set_comment
      @comment = Comment.find_by_id(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :content, :subject_experience)
    end
end


