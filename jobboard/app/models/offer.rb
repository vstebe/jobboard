class Offer < ActiveRecord::Base
  belongs_to :users
  belongs_to :companies
  has_many :applications
end
