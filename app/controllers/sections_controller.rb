class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]

  def index
    @sections = Section.all 
  end

  def show
  end

  def new
    @section = Section.new
   end
  
  def edit
  end

  def update
    @section.update(section_params)
    if @section.save
      redirect_to section_path(@section)
    else
      render :edit
    end
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def destroy
    @section.delete
    redirect_to sections_path
  end

  private
    def set_section
      @section = Section.find_by_id(params[:id])
    end

    def section_params
      params.require(:section).permit(:format, :content)
    end
end


