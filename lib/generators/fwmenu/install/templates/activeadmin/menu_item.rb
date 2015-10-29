ActiveAdmin.register <%= file_name.camelize %>Item do
	permit_params :title, :link, :show, :page, :level, :internal_link, :<%= file_name %>_id, , :<%= file_name %>_item_id, :article_id

  index do
    actions
    column :title
    column :link
    column :page
    column :show
    column :level
    column :internal_link
    column :<%= file_name %>_item
    column :<%= file_name %>
  end

	form do |f|
    f.inputs 'Create News' do
    	f.input :<%= file_name %>
      f.input :title
      f.input :link
      f.input :page, as: :select, collection: Rails.application.routes.routes.collect {|r| r.path.spec.to_s }.compact.uniq.delete_if{|i|i.include? "admin" or i.include? "rails" }.sort
      f.input :show
      f.input :article, label: "Articles (Only for article page)"
      f.input :internal_link
      f.input :<%= file_name %>_item, label: "Parent"
    end
    actions
  end
end
