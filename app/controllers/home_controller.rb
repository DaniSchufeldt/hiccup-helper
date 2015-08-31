class HomeController < ApplicationController

  def home
    @hiccup_cure = ["Take seven smalls sips of something.", "Eat a small piece of dark chocolate.", "Take little sips of water and say mamae after each one. It must be water and it must be ma mae... not mommy or anything else.", "What did you eat for lunch yesterday?", "Pull out your tongue with both hands.","Have someone ask you stupid questions."].sample
  end

  def remedy
  end


end
