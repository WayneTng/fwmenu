class <%= class_name %> < ActiveRecord::Base
	validates :title, :description, presence: true
end