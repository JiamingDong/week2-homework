class RpsgameController < ApplicationController
  
  def rps
    render "rps_game_begin"
  end
  
  def display
    @user_player = params[:user_player].to_i()
    computer = [0,1,2].sample()
    if @user_player == computer
      @outcome = "It's a tie!"
    elsif (@user_player + 1 == computer) || (@user_player==2 && computer==0)
      @outcome = "You lose!"
    else
      @outcome = "You win!"
    end
    @computer = getWeapon(computer)

    if @user_player == 0
      @choice_of_player = "Rock"
    elsif @user_player == 1
      @choice_of_player = "Paper"
    else 
      @choice_of_player = "Scissors"
    end
      
    render "rps_game_result"
  end
  
  def getWeapon (computer)
    weapons = ["Rock", "Paper", "Scissors"]
      return weapons[computer]
  end
  
end