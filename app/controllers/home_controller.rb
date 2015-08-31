class HomeController < ApplicationController

  def home
    @hiccup_cure = ["Take seven smalls sips of something.", "Eat a small piece of dark chocolate.", "Take little sips of water and say mamae after each one. It must be water and it must be ma mae... not mommy or anything else.", "What did you eat for lunch yesterday?", "Pull out your tongue with both hands.","Have someone ask you stupid questions."].sample
    @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
  end

  def remedy
    @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
  end


end
