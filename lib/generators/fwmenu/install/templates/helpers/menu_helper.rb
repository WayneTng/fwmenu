module <%= class_name %>Helper
  def get_menus_for
    <%= class_name %>.where(published: true).where("length(<%= table_name %>.position) > 0")
  end

  def get_link(item)
		if item.internal_link && item.page.present?
			if item.page.to_s == "/articles/:id" && item.article.present?
				link_to item.title, article_url(item.article)
			elsif item.page.include? ":id"
				link = item.page.gsub(":id", item.show.to_s)
				link_to item.title, link
			else
				link_to item.title, item.page
			end
		else
			link_to item.title, item.link, target: :_blank
		end
	end
end