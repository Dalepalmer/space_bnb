require "rails_helper"

describe "the add a listing process" do
  let(:test_user) { FactoryGirl.create(:test_user) }

  before do
    sign_in(test_user)
  end

  it "adds a new listing" do
    visit new_listing_path
    fill_in "Title", with: 'test title'
    fill_in "Description", with: 'bs'
    fill_in "Price", with: '130'
    fill_in "Location", with: 'Mars'
    click_on "Add Listing"
    expect(page).to have_content 'Listing added successfully!'
  end
end
