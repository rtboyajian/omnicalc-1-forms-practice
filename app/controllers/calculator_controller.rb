class CalculatorController < ApplicationController

  def square_form
    render({:template => "calculator_output/square_form"})
  end
  
  def calculate_square
    @number = params.fetch("number").to_f
    @square = @number ** 2

    render({:template => "calculator_output/display_square"})
  end

   def root_form
    render({:template => "calculator_output/root_form"})
  end
  
  def calculate_root
  
    @number = params.fetch("user_number").to_f
    @root = @number ** (0.5)

    render({:template => "calculator_output/display_root"})
  end

   def payment_form
    render({:template => "calculator_output/payment_form"})
  end

  def calculate_payment
    @principal = params.fetch("user_pv").to_f
    @apr = params.fetch("user_apr").to_f 
    @years = params.fetch("user_years").to_i 
    
    rate = @apr / 100 / 12
    nper = @years * 12
    
    numerator = rate * @principal
    denominator = 1 - (1+rate) ** -nper

    @payment = numerator / denominator 

    render({:template => "calculator_output/display_payment"})
  end

   def random_form
    render({:template => "calculator_output/rand_form"})
  end

  def generate_rand
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @rand = rand(@min..@max)
    
    render({:template => "calculator_output/display_rand"})
  end
end 
