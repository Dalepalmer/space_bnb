require "rails_helper"

describe "the make a reservation process" do
  let(:test_user) { FactoryGirl.create(:test_user) }

  before do
    sign_in(test_user)
  end

  it "makes a reservation" do
    visit new_reservation_path
    click_on "Make reservation"
    expect(page).to have_content 'Reservation made!'
  end
end
