require "rails_helper"

describe "the make a reservation process" do
  let(:test_user) { FactoryGirl.create(:test_user) }

  before do
    sign_in(test_user)
  end

  it "makes a reservation" do
    visit new_listing_path
    fill_in "Title", with: 'test title'
    fill_in "Description", with: 'bs'
    fill_in "Price", with: '130'
    fill_in "Location", with: 'Mars'
    click_on "Add Listing"
    click_on "make a reservation for this listing"
    click_on "Make reservation"
    expect(page).to have_content 'Reservation made!'
  end
end
