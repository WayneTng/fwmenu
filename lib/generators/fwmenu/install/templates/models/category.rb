class Category < ActiveRecord::Base
	has_many :articles

	validates :title, :description, presence: true

	enumerize :layout, in: Dir.glob('app/views/categories/show/*').collect{|r| r.gsub("app/views/", "").split('.').first}
end