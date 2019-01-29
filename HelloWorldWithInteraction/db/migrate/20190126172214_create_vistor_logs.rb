class CreateVistorLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :vistor_logs do |t|
      t.string :name
      t.date :in_time
      t.date :out_time

      t.timestamps
    end
  end
end
