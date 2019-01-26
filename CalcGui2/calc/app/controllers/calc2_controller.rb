class Calc2Controller < ApplicationController

  def create
    @sum = eval(params[:data])
  end
end
