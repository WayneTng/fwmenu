class Create<%= file_name.camelize %>Items < ActiveRecord::Migration
  def self.up
    create_table :<%= file_name %>_items do |t|
      t.string   "title"
      t.text     "link" 
      t.timestamps
    end
  end

  def self.down
    drop_table :<%= file_name %>_items
  end
end