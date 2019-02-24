class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :distance

      t.timestamps
    end
  end
end
