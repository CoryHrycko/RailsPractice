class Driver < ApplicationRecord
  def driver(arg1)
    arg1
  end

  def driving1(name, distance)
    distance
  end

  def driving(name, distance )
    driving_statement = 'Driver ' + name + ' traveled ' + distance +
        ' miles.'
    driving_statement
  end
end
