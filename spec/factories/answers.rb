FactoryGirl.define do
  sequence :body do |n|
    "MyTextTextText#{n}"
  end

  factory :answer do
    body "MyText"
  end

  factory :invalid_answer, class: "Answer" do
    body nil
  end
end
