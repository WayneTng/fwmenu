class <%= class_name %> < ActiveRecord::Base
	validates :title, :description, :position, presence: true
end