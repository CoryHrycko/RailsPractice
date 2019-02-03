class Employee < ApplicationRecord
  belongs_to :company
  def self.search(term)
    if term
      where('name LIKE ?',"%#{term}%").order('id DESC')
    else
      all
    end
  end
end
