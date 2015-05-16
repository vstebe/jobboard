class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

         validates_presence_of :surname
         validates_uniqueness_of :surname
         validates_presence_of :first_name
         validates_uniqueness_of :first_name

         belongs_to :company
         has_many :offers
         has_many :applications

         def self.send_offer_list
            students = User.where(role: 'student')
            students.each do |s|
              OfferListMailer.offer_list(s).deliver_now
            end
         end
end
