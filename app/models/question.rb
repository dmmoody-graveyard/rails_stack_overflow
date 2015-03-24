class Question < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates :inquiry, :presence => true
  validates :post, :presence => true
end
