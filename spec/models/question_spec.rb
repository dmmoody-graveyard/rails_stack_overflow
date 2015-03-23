require 'rails_helper'

describe Question do
  it { should validate_presence_of :user }
  it { should validate_presence_of :inquiry }
end