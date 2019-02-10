class CellNumber < ApplicationRecord
  belongs_to :users

  belongs_to :admins​

  belongs_to :phones
end
