module PlannersHelper
  def how_soon_flag event
    case event.how_soon
    when :today
      content_tag :span, "✔", class: 'icon_today', escape: false      
    when :this_week
      content_tag :span, "✔", class: 'icon_this_week', escape: false
    else
      ""
    end
  end
end
