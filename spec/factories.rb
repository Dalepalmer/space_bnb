FactoryGirl.define do
  factory(:user) do
    email('bob@bob.com')
    password('11111111')
    password_confirmation('11111111')
  end
end
