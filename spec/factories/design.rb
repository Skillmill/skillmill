FactoryGirl.define do

  factory :design do
    description "MyText"
    thirdpartycontent '1'
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'logo.png')) }
    project

    association :customer, factory: :customer, email: 'customer@design.com'
    association :designer, factory: :creative, email: 'designer@designer.com'
  end

end
