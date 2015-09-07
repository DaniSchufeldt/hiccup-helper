class HomeController < ApplicationController

  def home
    @hiccup_cure = ["Take seven smalls sips of something.",
      "Eat a small piece of dark chocolate.",
      "Take little sips of water and say mamae after each one. It must be water and it must be ma mae... not mommy or anything else.",
      "What did you eat for lunch yesterday?",
      "Pull out your tongue with both hands.",
      "Have someone ask you stupid questions.",
      "Breath into a paper bag.",
      "Boo!",
      "Exhale... now hold your breath and count to ten.",
      "Chug a glass of water.",
      "Drink water with a spoon on your nose.",
      "Drink water from the wrong side of the glass (upside down).",
      "Take sips of water, but do not swallow. Tip your head back, plug your nose, now swallow. Repeat this 3x.",
      "Eat a spoonfull of sugar, honey, or peanut butter.",
      "Squeeze your pinky finger.",
      "Squeeze the pressure point of your non-dominant hand.",
      "Pinch your shoulder.",
      "Recite the alphabet backwards.",
      "Massage the soft palate of your mouth."].sample
    @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
  end

  def hurray
    @background_color = ["#40E0D0", "#87CEFA", "#7B68EE","#EE82EE","#4682B4", "#6495ED","#DAA520","#FF6347","#FFA500","#3CB371","#20B2AA"].sample
  end

end
