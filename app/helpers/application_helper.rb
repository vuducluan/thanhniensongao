module ApplicationHelper
  def full_title page_title = ""
    base_title = t "app_name"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def css_type money_type
  	if money_type == 1
  	  "adding-money"
  	else
  	  "using-money"
  	end
  end
end
