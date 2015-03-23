require 'rails_helper'

describe 'the show question process' do
  it 'shows the question' do
    question = FactoryGirl.create(:question, :inquiry => "Can you help?")
    visit question_path(question)
    expect(question.inquiry).to eq "Can you help?"
  end

  it 'shows the question post' do
    question = FactoryGirl.create(:question, :post => "More detail")
    visit question_path(question)
    expect(question.post).to eq "More detail"
  end
end
