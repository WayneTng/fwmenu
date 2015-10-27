class <%= class_name %> < ActiveRecord::Base
	validates :title, :description, presence: true

	has_many :<%= file_name %>_items
end