class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories, force: true do |t|
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