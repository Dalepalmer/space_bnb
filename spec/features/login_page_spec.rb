require "rails_helper"

describe "the sign in a user process" do
  it "signs in a user" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page).to have_content 'Signed in'
  end
end
