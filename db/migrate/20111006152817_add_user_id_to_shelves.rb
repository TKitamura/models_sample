class AddUserIdToShelves < ActiveRecord::Migration
  def self.up
    add_column :shelves, :user_id, :integer
  end

  def self.down
    remove_column :shelves, :user_id
  end
end
