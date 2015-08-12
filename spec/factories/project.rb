FactoryGirl.define do
  factory(:project) do
    title "Architecture"
    description "Architecture"
    price 1
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'logo.png')) }
    association :user, factory: :customer
    category
  end
end
