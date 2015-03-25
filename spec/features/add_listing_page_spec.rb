require "rails_helper"

describe "the add a listing process" do
  let(:user) { FactoryGirl.create(:user) }


  it "adds a new listing" do
    user = FactoryGirl.create(:user)
    visit new_listing_path
    fill_in "Title", with: 'test title'
    fill_in "Description", with: 'bs'
    fill_in "Price", with: '130'
    fill_in "Date", with: '02/23/2015'
    fill_in "Location", with: 'Mars'
    click_on "Add Listing"
    expect(page).to have_content 'successfully'
  end
end
