require 'rails_helper'

describe Comment do
  it { should belong_to :question }
  it { should validate_presence_of :user }
  it { should validate_presence_of :answer }
end