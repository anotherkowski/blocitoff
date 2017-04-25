module ItemsHelper
  require 'action_view'
  include ActionView::Helpers::DateHelper

  def time_remaining
    distance_of_time_in_words(Time.now, self.created_at + 7.days, include_seconds: true)
  end

  def time_since_creation
    distance_of_time_in_words(self.created_at, Time.now, include_seconds: true)
  end

end
