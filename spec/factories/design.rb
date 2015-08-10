FactoryGirl.define do

  factory :design do
    description "MyText"
    thirdpartycontent false
    image "MyString"
    project
    customer
    designer
  end

end
