class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => "User"
  has_many :event_attendees
  has_many :attendees, :through => :event_attendees, :source => :user

  def created_by?(user)
    creator == user
  end
end
