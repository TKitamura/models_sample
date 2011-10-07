class AddUsersToShelf < ActiveRecord::Migration
  def self.up
    add_column :shelves, :user, :integer
  end

  def self.down
    remove_column :shelves, :user
  end
end
