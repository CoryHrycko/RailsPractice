class CreateCellNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :cell_numbers do |t|
      t.belongs_to :phone, index: true
      t.belongs_to :admin, index: true
      t.belongs_to :user, index: true
      t.integer :phone_number, limit:10

      t.timestamps
    end
  end
end
