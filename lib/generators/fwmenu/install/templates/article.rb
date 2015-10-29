class Article < ActiveRecord::Base
	validates :title, :description, presence: true
	
	extend FriendlyId
  
  friendly_id :title, use: [:slugged, :finders]
end