class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action do
    @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
  end
end
