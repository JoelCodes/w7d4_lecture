module ApplicationHelper
  def stew_date_format date
    dow = date.strftime '%a'
    if date.year == Time.now.year
      "#{dow[0..1]} #{date.strftime '%b %d'}"
    else
      "#{dow[0..1]} #{date.strftime '%b %d, %Y'}"
    end
  end
end
