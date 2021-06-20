class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :reserver_id
      t.integer :reserved_id
      t.integer :bike_id
      t.string :reservation_name #いらない？
      t.string :reservation_date #いらない
      t.integer :payment_method
      t.text :reservation_comment #いらない？
      t.datetime :start_time
      t.datetime :end_time
      t.string :bike_name
      t.string :bike_image_id
      t.string :bike_maker
      t.string :bike_displacement
      t.integer :bike_price
      t.string :bike_mileage
      t.string :bike_modek_year
      t.text :introduction

      t.timestamps
    end
  end
end
