class Create<%= file_name.camelize %>Items < ActiveRecord::Migration
  def self.up
    create_table :<%= file_name %>_items do |t|
      t.string    "title"
      t.string     "link"
      t.string     "page" 
      
      t.integer    "show"
      t.integer    "level", default: 1
      t.boolean    "internal_link", default: true
      t.timestamps
      t.references :<%= file_name %>
    end

    add_index :<%= file_name %>_items, :<%= file_name %>_id
  end

  def self.down
    drop_table :<%= file_name %>_items
  end
end