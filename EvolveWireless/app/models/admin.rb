class Admin < ApplicationRecord
  has_many :phones, through:  :cell_numbers
end
