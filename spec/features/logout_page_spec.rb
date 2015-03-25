require "rails_helper"

describe "the sign out a user process" do
  it "signs out a user" do
    user = FactoryGirl.create(:user)
    visit "/"
    click_on "Log out"
    save_and_open_page
    expect(page).to have_content "Goodbye"
  end
end
