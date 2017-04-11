class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all 
  end

  def show
  end

  def new
    @tag = Tag.new
   end
  
  def edit
  end

  def update
    @tag.update(tag_params)
    if @tag.save
      redirect_to tag_path(@tag)
    else
      render :edit
    end
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tag_path(@tag)
    else
      render :new
    end
  end

  def destroy
    @tag.delete
    redirect_to tags_path
  end

  private
    def set_tag
      @tag = Tag.find_by_id(params[:id])
    end

    def tag_params
      params.require(:tag).permit(:name)
    end
end

