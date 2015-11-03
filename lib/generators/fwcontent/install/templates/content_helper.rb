module <%= class_name %>Helper
  def get_content_for
    <%= class_name %>.where("page like ? or page like ?", "%#{params[:controller]}:#{params[:action]}\n%", "%All%")
  end
end
