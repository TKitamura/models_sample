class CreateShelves < ActiveRecord::Migration
  def self.up
    create_table :shelves do |t|
      t.string :shelf_name
      t.string :shelf_description

      t.timestamps
    end
  end

  def self.down
    drop_table :shelves
  end
end
