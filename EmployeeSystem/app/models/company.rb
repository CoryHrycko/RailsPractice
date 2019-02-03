class Company < ApplicationRecord
  has_many :employees

  def self.search(term)
    if term
      where('name LIKE ?',"%#{term}%")
    else
      all
    end
  end

  end
