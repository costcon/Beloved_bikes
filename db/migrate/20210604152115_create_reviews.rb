class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :reviewer_id
      t.integer :reviewed_id
      t.integer :rate
      t.text :review_comment

      t.timestamps
    end
  end
end
