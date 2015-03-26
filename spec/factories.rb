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

  factory(:test_user, class: User) do
    email('bill@bill.com')
    password('password')
    password_confirmation('password')
  end

  factory(:reservation) do
    listing_id(13)
    user_id(1)
    date_available(03/21/2014)
  end
end
