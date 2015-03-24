FactoryGirl.define do  factory :user do
    
  end

  factory :question do
    user 'dmmoody'
    inquiry 'This is my question'
    post 'Here is further explanation of my question'
  end
end
