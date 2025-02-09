class CalcController < ApplicationController
  def square
    render({:template => "templates/square"})
  end

  def square_results
    @num = params.fetch(:number).to_f
    @square = @num ** 2
    render({:template => "templates/square_results"})
  end



  def square_root
    render({:template => "templates/square_root"})
  end

  def square_root_results
    @num = params.fetch(:user_number).to_f
    @square_root = Math.sqrt(@num)
    render({:template => "templates/square_root_results"})
  end



  def payment
    render({:template => "templates/payment"})
  end

  def payment_results
    @the_apr = params.fetch(:user_apr).to_f/100/12
    @the_years = params.fetch(:user_years).strip.to_i
    @the_n = @the_years*12
    @the_pv = params.fetch(:user_pv).to_f
    
    @the_result = (@the_apr*@the_pv)/(1-(1+@the_apr)**(-@the_n))

    render({:template => "templates/payment_results"})
  end




  def random
    render({:template => "templates/random"})
  end

  def random_results
    @the_min = params.fetch(:user_min).to_f
    @the_max = params.fetch(:user_max).to_f
    @the_result = rand(@the_min..@the_max)

    render({:template => "templates/random_results"})
  end

end
