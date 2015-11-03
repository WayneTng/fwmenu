class <%= class_name %> < ActiveRecord::Base
	extend Enumerize

	validates :title, :description, presence: true

	serialize :page

	enumerize :position, in: Position.all.map(&:title)

	def page_enum
    Rails.application.routes.routes.map(&:defaults).reject!(&:blank?).inject([]){|b, a| b << "#{a[:controller]}:#{a[:action]}" }.sort
   end
end