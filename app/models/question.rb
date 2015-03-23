class Question < ActiveRecord::Base
  validates :user, :presence => true
  validates :inquiry, :presence => true
end
