class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  has_many :applications
  has_one :target
  
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, presence: true
end
