class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles, force: true do |t|
      t.string   "title"
      t.text     "short_description"
      t.text     "description"
      t.string   "slug", unique: true
      t.string   "layout"    
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end