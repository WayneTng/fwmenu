ActiveAdmin.register <%= class_name %> do
	permit_params :title, :description, :page, :position

	form do |f|
    f.inputs 'Create News' do
      f.input :title
      f.input :description
      f.input :position, as: :select, collection: Position.all.map(&:title)
      f.input :page
    end
    actions
  end
end