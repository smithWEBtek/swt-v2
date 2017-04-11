class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all 
  end

  def show
  end

  def new
    @post = Post.new
    @post.post_sections.build(number: 1)
    @post.post_sections.build(number: 2)
    @post.post_sections.build(number: 3)

  end
  
  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def destroy
    @post.delete
    redirect_to posts_path
  end

  private
    def set_post
      @post = Post.find_by_id(params[:id])
    end

    def post_params
      params.require(:post).permit(:date, :title, :outline, :summary, post_sections_attributes: [:number, :content])
    end
end
