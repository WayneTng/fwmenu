class <%= file_name.camelize %>Items < ActiveRecord::Base
	validates :title, :link, presence: true
end