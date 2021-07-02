class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.integer :user_id
      t.string :name
      t.string :bike_image_id
      t.string :vehicle_inspection_id
      t.string :maker
      t.string :displacement
      t.integer :price
      t.string :mileage
      t.string :modek_year
      t.text :introduction
      t.string :cancel_fee_otd
      t.string :cancel_fee24
      t.string :cancel_fee72
      t.integer :at_mt, null: false, default: 0
      t.integer :impressions_count, default: 0
      t.integer :area, null: false, default: 0
      t.boolean :is_active

      t.timestamps
    end
  end
end
