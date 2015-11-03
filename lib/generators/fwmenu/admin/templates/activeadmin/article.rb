ActiveAdmin.register Article do
	permit_params :title, :description, :slug, :layout, :category_id, :ordering

	index do
    actions
    column :title
    column :slug
    column :layout
    column :category
    column :created_at
    column :updated_at
  end
end
