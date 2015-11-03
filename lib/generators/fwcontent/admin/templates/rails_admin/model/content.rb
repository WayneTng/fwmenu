class <%= class_name %> < ActiveRecord::Base
	extend Enumerize

	validates :title, :description, presence: true

	serialize :page

	def page_enum
    Rails.application.routes.routes.map(&:defaults).reject!(&:blank?).inject([]){|b, a| b << "#{a[:controller]}:#{a[:action]}" }.sort
  end

  rails_admin do
		edit do
			field :title
			field :description 
			field :position, :enum do
				enum do
    			Position.all.map(&:title)
  			end
			end
			field :page
		end
	end
end