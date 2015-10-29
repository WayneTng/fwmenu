class Article < ActiveRecord::Base
	extend Enumerize
	validates :title, :description, presence: true
	
	extend FriendlyId
  
  friendly_id :title, use: [:slugged, :finders]

  before_save :set_slug

  enumerize :layout, in: Dir.glob('app/views/articles/show/*').collect{|r| r.gsub("app/views/", "").split('.').first}

  def set_slug
  	self.slug = title.parameterize unless slug.present?
  end
end