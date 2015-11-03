class <%= class_name %> < ActiveRecord::Base
	extend Enumerize
	validates :title, :position, presence: true

	enumerize :position, in: Position.all.map(&:title)

	has_many :<%= file_name %>_items

	rails_admin do
		edit do
			field :title
			field :description 
			field :position, :enum do
				enum do
    			Position.all.map(&:title)
  			end
			end
			field :published
		end
	end
end