class DicegameController < ApplicationController
  def roll_to_start
    render "roll_to_start"
  end
  
  def roll
    @fst_dice = getRandomNum
    @sec_dice = getRandomNum
    
    if params["point"].nil?
        first_roll
    else
        non_first_roll
    end
  end
  
  def first_roll
    sum = @fst_dice + @sec_dice
    if sum == 7 || sum == 11
        render "win_page"
    elsif sum == 2 || sum == 3 || sum == 12
        render "lose_page"
    else
        render "first_roll"
    end
  end
    
  def non_first_roll
    sum = @fst_dice + @sec_dice
    @point = params["point"].to_i
    if sum == @point
      render "win_page"
    elsif sum == 7
      render "lose_page"
    else
      render "non_first_roll"
    end
  end
  
  def getRandomNum
    numbers = [1, 2, 3, 4, 5, 6]
    return numbers.sample
  end
  
end