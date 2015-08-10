FactoryGirl.define do
  factory(:user) do
    current_sign_in_at "2015-08-09T20:49Z"
    current_sign_in_ip "ToFactory: RubyParser exception parsing this attribute after factory generation"
    first_name "asd"
    last_name "asd"
    sign_in_count 1
    admin false
    creative false
    customer false
    password 123123123
    password_confirmation 123123123
    factory :creative do
      email "creative@creative.com"
      role 'creative'
    end

    factory :customer do
      email "customer@customer.com"
      role 'customer'
    end

    factory :admin do
      email "admin@admin.com"
      role 'admin'
      admin true
    end


  end
end