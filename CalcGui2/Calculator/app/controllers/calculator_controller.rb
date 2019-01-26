class CalculatorController < ApplicationController
  include CalculatorHelper
  def new
    @result = Calculator.send(params[:operation], *[params[:a], params[:b]])
    render :index
  end

  def Start

  end

  def index

  end


end

