class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :reserver_id
      t.integer :reserved_id
      t.integer :bike_id
      t.text :reservation_comment
      t.datetime :start_time
      t.datetime :end_time
      t.integer :payment_method

      t.timestamps
    end
  end
end
