class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.integer :user_id
      t.integer :bike_id
      t.string :reserve_name
      t.string :reserve_date
      t.integer :payment_method
      t.text :reserve_comment
      t.datetime :start_time

      t.timestamps
    end
  end
end
