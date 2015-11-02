class <%= class_name %> < ActiveRecord::Base
	validates :title, :position, presence: true

	has_many :<%= file_name %>_items
end