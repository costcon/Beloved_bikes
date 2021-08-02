class RemoveApprovalToUsers < ActiveRecord::Migration[5.2]

  def up
    remove_column :users, :approval, :integer
  end

  def down
    add_column :users, :approval, :integer
  end

end
