class Company < ActiveRecord::Base
  has_one :user
  has_many :offers

  validates :name, presence: true
  validates :description, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :mail, presence: true
end
