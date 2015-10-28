class <%= file_name.camelize %>Item < ActiveRecord::Base
	extend Enumerize

	validates :title, :<%= file_name %>, presence: true

	belongs_to :<%= file_name %>
	belongs_to :<%= file_name %>_item

	enumerize :page, in: Rails.application.routes.routes.collect {|r| r.path.spec.to_s }.compact.uniq.delete_if{|i|i.include? "admin" or i.include? "rails" }.sort
	# enumerize :page, in: Rails.app lication.routes.routes.map(&:defaults).reject!(&:blank?).inject([]){|b, a| b << "#{a[:controller]}:#{a[:action]}" }.delete_if{|i|i.include? "admin"}.sort

end