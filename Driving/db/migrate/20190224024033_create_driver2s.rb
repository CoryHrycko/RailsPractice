class CreateDriver2s < ActiveRecord::Migration[5.1]
  def change
    create_table :driver2s do |t|

      t.timestamps
    end
  end
end
