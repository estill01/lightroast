class Match < ActiveRecord::Base
  belongs_to :meeting_request, :counter_cache => true
end
