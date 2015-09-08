class RemediesController < ApplicationController
  before_action :set_remedy, only:[:show]

  def show
  end

  def index
    @remedies = Remedy.all
  end

  def new
    @remedy = Remedy.new
  end

  def create
    @remedy = Remedy.new(remedy_params)

    respond_to do |format|
      if @remedy.save
        format.html { redirect_to @remedy, notice: 'Remedy was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end



  private

    def set_remedy
      @remedy = Remedy.find(params[:id])
    end

    def remedy_params
      params.require(:remedy).permit(:description, :twitter_handle)
    end

end
