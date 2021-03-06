class Listing < ActiveRecord::Base
  belongs_to :user
  validates :title, :presence => true
  validates :price, :presence => true
  validates :date_available, :presence => true
  validates :location, :presence => true
  validates :description, :presence => true
end
