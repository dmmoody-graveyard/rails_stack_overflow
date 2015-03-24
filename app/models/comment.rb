class Comment < ActiveRecord::Base
  belongs_to :question
  validates :user, :presence => true
  validates :answer, :presence => true
end