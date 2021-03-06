FactoryGirl.define do
  factory(:user) do
    sequence(:email) { |n| "user#{n}@domain.tld" }
    password('11111111')
    password_confirmation('11111111')
  end
  factory(:listing) do
    title('Super cool room')
    description('Its super cool')
    price(330)
    date_available(03/21/2014)
    location('Austin, Texas')
    user_id(1)
  end
end
