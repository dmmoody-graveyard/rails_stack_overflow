class Question < ActiveRecord::Base
  has_many :comments
  validates :user, :presence => true
  validates :inquiry, :presence => true
  validates :post, :presence => true
end
