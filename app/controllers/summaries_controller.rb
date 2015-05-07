class SummariesController < ApplicationController
 
  def index
  	 	@summaries = Summary.all
      authorize @summaries
  end

  def create

    @summary = Summary.new(params.require(:summary).permit(:body))
        authorize @topic

    if @summary.save
  	   redirect_to @summary, notice: "Summary was saved successfully."
    else
      flash[:error] = "Error creating summary. Please try again."
      render :new
    end
  end

  def show
  	@summary = Summary.find(params[:id])
    
  end
end
