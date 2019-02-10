class Phone < ApplicationRecord
  has_many :admins, through:  :cell_numbers
  has_many :users, through:  :cell_numbers
end
