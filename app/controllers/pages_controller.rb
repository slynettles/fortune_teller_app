class PagesController < ApplicationController
	
	def home
    @current_time = Time.now
    @title = "Cowabunga Umbrellas"
  end

  def login
    @title = "Sign In"
  end

  def fortune_teller
    fortunes = ["You're gonna be bit by a kitten.", "You will be attacked by a lion today, but you'll survive, so you've got that going for ya!", "You will be devoured by a lion."]

    @fortune = fortunes.sample
  end

  def lotto
    @user_views

    @lotto_numbers = []
    10.times do
      @lotto_numbers << rand(1..60)
    end

    @user_views = 1
  end

  def bottles_of_beer
    bottles = 99
    @song = ""
    while bottles > 0
      @song += "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer, take one down, pass it around, #{bottles - 1} bottles of beer on the wall! "
      bottles -= 1
    end
  end

end
		


