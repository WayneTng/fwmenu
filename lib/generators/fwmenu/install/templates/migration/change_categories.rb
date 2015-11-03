class ChangeCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.string   "title"
      t.text     "description"
      t.string   "slug", unique: true
      t.string   "layout"    
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end