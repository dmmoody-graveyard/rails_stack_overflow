class Question < ActiveRecord::Base
  validates :user, :presence => true
  validates :inquiry, :presence => true
  validates :post, :presence => true
end
