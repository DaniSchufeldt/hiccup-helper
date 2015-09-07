class RemediesController < ApplicationController
  before_action :set_remedy, only:[:show]

  def show
    @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
  end

  def index
    @remedies = Remedy.all
  end

  def new
    @remedy = Remedy.new
    @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
  end

  def create
    @remedy = Remedy.new(remedy_params)

    respond_to do |format|
      if @remedy.save
        # format.html { redirect_to @remedy, notice: 'Your remedy has been added!' }
        format.html { redirect_to @remedy, notice: 'Remedy was successfully created.' }
        # format.json { render :new, status: :created, location: @remedy }
      else
        format.html { render :new }
        # format.json { render json: @remedy.errors, status: :unprocessable_entity }
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
