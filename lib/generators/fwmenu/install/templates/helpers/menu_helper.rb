module <%= class_name %>Helper
  def get_menus_for
    <%= class_name %>.where(published: true)
  end
end