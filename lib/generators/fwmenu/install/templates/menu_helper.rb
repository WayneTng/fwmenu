module <%= class_name %>Helper
  def get_<%= table_name %>_for
    <%= class_name %>.all
  end
end