class <%= class_name %> < ActiveRecord::Base
	extend Enumerize
	validates :title, :position, presence: true

	enumerize :position, in: Position.all.map(&:title)

	has_many :<%= file_name %>_items
end