require 'rails_helper'

  describe User do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
    it { should validate_presence_of :password_confirmation }
    it { should have_many :listings }
    it { should have_many(:listings).through(:reservations) }

end
