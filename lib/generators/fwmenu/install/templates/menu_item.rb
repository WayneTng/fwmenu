class <%= file_name.camelize %>Item < ActiveRecord::Base
	extend Enumerize

	validates :title, :<%= file_name %>, presence: true

	belongs_to :<%= file_name %>

	enumerize :page, in: Rails.application.routes.routes.map(&:defaults).reject!(&:blank?).inject([]){|b, a| b << "#{a[:controller]}:#{a[:action]}" }.sort
end