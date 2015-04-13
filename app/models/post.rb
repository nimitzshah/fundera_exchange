class Post < ActiveRecord::Base
  validates_confirmation_of :text
end
