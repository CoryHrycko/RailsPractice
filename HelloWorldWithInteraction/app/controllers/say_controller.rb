class SayController < ApplicationController
  def who
  end

  def hello
    @name = params[:q]
    @s_name = params[:f]
    visitor_log= VistorLog.new
    visitor_log.name = @name
    visitor_log.in_time = Time.now
    visitor_log.save
  end

  def goodbye
    @name = params[:q]
    @s_name = params[:f]
    visitor_log= VistorLog.find_by(name:@name)
    visitor_log.out_time = Time.now
    visitor_log.save
  end
end
