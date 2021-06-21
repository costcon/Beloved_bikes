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
      # t.string :bike_name
      # t.string :bike_image_id
      # t.string :bike_maker
      # t.string :bike_displacement
      # t.integer :bike_price
      # t.string :bike_mileage
      # t.string :bike_modek_year
      # t.text :introduction

      t.timestamps
    end
  end
end
