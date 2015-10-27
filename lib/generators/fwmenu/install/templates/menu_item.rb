class <%= file_name.camelize %>Item < ActiveRecord::Base
	validates :title, :link, :<%= file_name %>, presence: true

	belongs_to :<%= file_name %>
end