class Meeting < ActiveRecord::Base
  belongs_to :match
  has_many :participants, :class => :user
end
