class <%= class_name %> < ActiveRecord::Base
	extend Enumerize
	validates :title, :position, presence: true

	has_many :<%= file_name %>_items
end