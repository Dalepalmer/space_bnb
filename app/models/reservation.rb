class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing
  validates :user_id, :presence => true

end
