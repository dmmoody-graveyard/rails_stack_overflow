require 'rails_helper'

describe Question do
  it { should belong_to :user }
  it { should have_many :comments }
  it { should validate_presence_of :inquiry }
  it { should validate_presence_of :post }
end
