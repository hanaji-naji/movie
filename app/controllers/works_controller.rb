class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
    @work.images.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else   
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
    # @reviews = Review.where(work_id: params[:id])
  end

  private
  def work_params
    params.require(:work).permit(:title, :year, images_attributes: [:url])
  end
end
