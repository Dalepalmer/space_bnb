class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :reservations
  validates :title, :presence => true
  validates :price, :presence => true
  validates :date_available, :presence => true
  validates :location, :presence => true
  validates :description, :presence => true
end
