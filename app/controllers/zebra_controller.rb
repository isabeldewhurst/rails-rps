class ZebraController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end

  def giraffe
      plays = ["rock", "paper", "scissors"]
      their_play = plays.sample

      @their_readout = "They played #{their_play}!"

      if their_play == "rock"
        @outcome = "We tied!"
      elsif their_play == "paper"
        @outcome = "We lost!"
      else 
        @outcome = "We won!"
      end
    render({ :template => "game_templates/play_rock"})
  end

  def elephant
      plays = ["rock", "paper", "scissors"]
      their_play = plays.sample

      @their_readout = "They played #{their_play}!"

      if their_play == "rock"
        @outcome = "We won!"
      elsif their_play == "paper"
        @outcome = "We tied!"
      else 
        @outcome = "We lost!"
      end
    render({ :template => "game_templates/play_paper"})
  end

  def lion

    plays = ["rock", "paper", "scissors"]
    our_play = plays.sample
    their_play = plays.sample

    @our_readout = "We played #{our_play}!"
    @their_readout = "They played #{their_play}!"

    if their_play == "rock"
      @outcome = "We lost!"
    elsif their_play == "paper"
      @outcome = "We won!"
    else 
      @outcome = "We tied!"
    end

    render({ :template => "game_templates/play_scissors"})
  end

end
