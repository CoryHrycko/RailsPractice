class VendingMachineController < ApplicationController

  def index
      session[:vending_machine_power_state]= false
  end
end
