class ZebraController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end

  def giraffe
    render({ :template => "game_templates/play_rock"})
  end

  def elephant
    render({ :template => "game_templates/play_paper"})
  end

  def lion
    render({ :template => "game_templates/play_scissors"})
  end

end
