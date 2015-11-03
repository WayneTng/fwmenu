class ChangePositions < ActiveRecord::Migration
  def self.up
    change_table :positions do |t|
      t.string   "title"
    end
  end

  def self.down
    drop_table :positions
  end
end