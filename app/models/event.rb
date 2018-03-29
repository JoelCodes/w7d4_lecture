class Event < ApplicationRecord
  belongs_to :planner
  def self.upcoming
    where { |e| date.how_soon != :past }
  end
  def how_soon
    if date < Time.now
      :past
    elsif date < 1.day.from_now
      :today
    elsif date < 7.days.from_now
      :this_week
    else
      :future
    end
  end
end
