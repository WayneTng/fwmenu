class <%= class_name %> < ActiveRecord::Base
	validates :title, presence: true

	has_many :<%= file_name %>_items
end