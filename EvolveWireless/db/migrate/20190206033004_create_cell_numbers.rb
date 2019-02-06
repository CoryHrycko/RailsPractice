class CreateCellNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :cell_numbers do |t|
      t.user :relative
      t.admin :relative
      t.phone :relative

      t.timestamps
    end
  end
end
