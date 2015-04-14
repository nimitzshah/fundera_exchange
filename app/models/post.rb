class Post < ActiveRecord::Base
  validates_confirmation_of :text
  before_create :set_creation_time_to_now
  def set_creation_time_to_now
    self.creation_time = Time.now
  end
end
