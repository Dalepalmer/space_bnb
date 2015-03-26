require 'rails_helper'

  describe Reservation do
    it { should belong_to :user }
    it { should belong_to :listing }
    it { should validate_presence_of :user_id }
  end
