class Application < ActiveRecord::Base
  belongs_to :users
  belongs_to :applications
end
