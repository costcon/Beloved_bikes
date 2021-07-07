class AddMagnitudeToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :magnitude, :decimal, precision: 5, scale: 3
    add_column :bikes, :salience, :decimal, precision: 10
  end
end
