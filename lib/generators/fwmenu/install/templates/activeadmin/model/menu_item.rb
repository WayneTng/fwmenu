class <%= file_name.camelize %>Item < ActiveRecord::Base
	extend Enumerize

	validates :title, :<%= file_name %>, presence: true

	belongs_to :<%= file_name %>
	belongs_to :<%= file_name %>_item
	has_many 	 :<%= file_name %>_items
	belongs_to :article

	before_save :set_level

	def set_level
		self.level = self.<%= file_name %>_item.level + 1 if self.<%= file_name %>_item.present?
	end

end