class CalculatorController < ApplicationController

  def render_homepage

    render({:template => ""})
  end

  def calculate_square

    @number = params.fetch("number")
    @square = @number.to_f ** 2

    render({:template => display_square})
  end

  def calculate_root
    
    @number = params.fetch("number")
    @root = @number ** 0.5

    render({:template => display_root})
  end

  def calculate_payment
    @payment_numerator = params.fetch("present_value")*params.fetch("apr").to_f
    @payment_denominator = 1-(1+params.fetch("apr")**(-params.fetch("years"))

    @payment = @payment_numerator / @payment_denominator

    render({:template => display_payment})

  end

  def generate_rand
    @min = params.fetch("user-min")
    @max = params.fetch("user-max")
    @rand = rand(@min..@max)
    
    render({:template => display_rand})
  end
end 
