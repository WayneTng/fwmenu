class Category < ActiveRecord::Base
	extend Enumerize
	extend FriendlyId
	has_many :articles

	friendly_id :title, use: [:slugged, :finders]

	validates :title, :description, presence: true

	enumerize :layout, in: Dir.glob('app/views/categories/show/*').collect{|r| r.gsub("app/views/", "").split('.').first}

	def set_slug
  	self.slug = title.parameterize unless slug.present?
  end
end