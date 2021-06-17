class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :reserver_id
      t.integer :reserved_id
      t.integer :bike_id
      t.string :reservation_name #いらない？
      t.string :reservation_date
      t.integer :payment_method
      t.text :reservation_comment #いらない？
      t.datetime :start_time

      t.timestamps
    end
  end
end
