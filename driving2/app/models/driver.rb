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
  CSV.foreach(file.path, headers: true) do |row|
    driver_hash = row.to_hash
    driver = find_or_create_by!(name:driver_hash['name'], distance: driver_hash['distance'])
    driver.updat_attributes(product_has)
  end
  end
# end
end

