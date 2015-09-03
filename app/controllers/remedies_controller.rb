class RemediesController < ApplicationController

  def new
    @remedy = Remedy.new
  end

  def create
    @remedy = Remedy.new(remedy_params)

    respond_to do |format|
      if @remedy.save
        format.html { redirect_to @remedy, notice: 'Your remedy has been added!' }
        format.json { render :show, status: :created, location: @remedy }
      else
        format.html { render :new }
        format.json { render json: @remedy.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def remedy_params
      params.require(:remedy).permit(:description, :twitter_handle)
    end

    def remedies
      @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
    end
end
