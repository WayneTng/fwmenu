class <%= file_name.camelize %>Item < ActiveRecord::Base
	validates :title, :link, presence: true
end