#class
class VendingMachine
#   method question mark is nan indicator to return boolean,

  def initialize
    @on = false
  end

  def on?
    @on
  end
  def power_up
    @on = true
  end
end