FactoryGirl.define do
  factory(:review) do
    rating 1
    comment 'Comment'
    user
    design
  end
end
