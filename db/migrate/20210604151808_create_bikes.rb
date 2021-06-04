class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.integer :user_id
      t.string :name
      t.integer :bike_image_id
      t.string :maker
      t.string :displacement
      t.integer :price
      t.string :mileage
      t.string :modek_year
      t.boolean :favorite
      t.boolean :is_active

      t.timestamps
    end
  end
end
