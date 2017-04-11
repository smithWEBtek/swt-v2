class HilitesController < ApplicationController
  before_action :set_hilite, only: [:show, :edit, :update, :destroy]

  def index
    @hilites = Hilite.all 
  end

  def show
  end

  def new
    @hilite = Hilite.new
    @lexers = ["ruby", "erb", "javascript", "html"]
  end
  
  def edit
  end

  def update
    @hilite.update(hilite_params)
    if @hilite.save
      redirect_to hilite_path(@hilite)
    else
      render :edit
    end
  end

  def create
    @hilite = Hilite.new(hilite_params)
    if @hilite.save
      redirect_to hilite_path(@hilite)
    else
      render :new
    end
  end

  def destroy
    @hilite.delete
    redirect_to hilites_path
  end

  private
    def set_hilite
      @hilite = Hilite.find_by_id(params[:id])
    end

    def hilite_params
      params.require(:hilite).permit(:code, :lexer, :style, :linenos, :divstyles, :api_url, :api_result)
    end
end
