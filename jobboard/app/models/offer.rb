class Offer < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  has_many :applications
  
  before_save :set_user
  
  def set_user()
    self.user_id = self.id
  end
end
