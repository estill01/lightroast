class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :interests
  has_many :meeting_requests
  has_many :matches, :through => :meeting_requests
  has_many :meetings, :through => :matches
  has_many :points
end
