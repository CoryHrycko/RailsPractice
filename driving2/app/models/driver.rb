class Driver < ApplicationRecord
  # File.open (:field), "w+" do |file|
  def self.to_csv(fields = column_names, options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*fields)
      end
    end
  end

  def self.import(file)

  end
# end
end

