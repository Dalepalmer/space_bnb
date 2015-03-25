require "rails_helper"

describe "the homepage" do
  it "goes to the home page" do
    visit "/"
    expect(page).to have_content 'Welcome to Spacebnb'
  end
  it "home page has listings" do
    visit "/"
    expect(page).to have_content 'Listings'
  end
end
