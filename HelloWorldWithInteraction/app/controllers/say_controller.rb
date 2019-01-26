class SayController < ApplicationController
  def who
  end

  def hello
    @name = params[:q]
    @s_name = params[:f]
  end

  def goodbye
    @name = params[:q]
    @s_name = params[:f]
  end
end
