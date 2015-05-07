class Company < ActiveRecord::Base
  has_one :user
  has_many :offers
end
