ActiveAdmin.register <%= file_name.camelize %> do
	permit_params :title, :description, :position, :published
end
