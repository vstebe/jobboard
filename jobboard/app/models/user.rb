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

         def active_for_authentication?
           super && role != "not_validated"
         end

         def inactive_message
            if role == "not_validated" 
              :not_approved
            else
              super # Use whatever other message
            end
          end

         def self.send_offer_list
            students = User.where(role: 'student')
            offers = Offer.all
            students.each do |s|
              OfferListMailer.offer_list(s, offers).deliver_now
            end
         end
end
