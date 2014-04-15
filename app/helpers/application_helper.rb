module ApplicationHelper
  def title
    base_title = "Zappening, what's happening around you?"
    if @title.nil?
      base_title
    else  
      "#{base_title} |#{@title}"
    end
  end
  def logo
    image_tag("Zappening.png", :class=>"round")
  end
end
