class Company < ActiveRecord::Base
  has_one :users
  has_many :offers
end
