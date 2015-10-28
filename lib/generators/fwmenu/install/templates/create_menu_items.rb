class Create<%= file_name.camelize %>Items < ActiveRecord::Migration
  def self.up
    create_table :<%= file_name %>_items do |t|
      t.string    "title"
      t.string     "link"
      t.string     "controller_name" 
      t.string     "action_name"
      t.integer    "parent_id", default: 0
      t.integer    "show_id"
      t.integer    "level", default: 1
      t.boolean    "group"
      t.timestamps
      t.references :<%= file_name %>
    end

    add_index :<%= file_name %>_items, :<%= file_name %>_id
  end

  def self.down
    drop_table :<%= file_name %>_items
  end
end