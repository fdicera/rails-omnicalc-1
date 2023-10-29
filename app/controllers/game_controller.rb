class GameController < ApplicationController
  # square
  def square
    render({ :template => "game_templates/square"})
  end

  def square_result
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num**2
    render({ :template => "game_templates/square_result"})
  end
# root
  def root
    render({ :template => "game_templates/root"})
  end

  def root_result
    @the_num = params.fetch("user_number").to_f
    @the_result = @the_num**0.5
    render({ :template => "game_templates/root_result"})
  end

  # payment

  def payment
    render({ :template => "game_templates/payment"})
  end

  def payment_result
    @APR_new = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_principal").to_f
    @APR_pct = @APR_new/(100*12)
    @months = @years*12
    @payment_raw = @APR_pct*@principal/(1-(1+@APR_pct)**(@months*-1))
    @payment = @payment_raw.to_fs(:currency)
    @APR = format("%.4f", @APR_new.round(4))
    @years_vis = @years.round(0)
    @principal_vis = @principal.to_fs(:currency)
    render({ :template => "game_templates/payment_result"})
  end

  # random

  def random
    render({ :template => "game_templates/random"})
  end

  def random_result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @choice = rand(@min..@max)
    render({ :template => "game_templates/random_result"})
  end
end
