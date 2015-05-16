class OfferListMailer < ApplicationMailer
  default from: 'heeee@jobboard.com'

  def offer_list(student)
    mail(to: @student.email,
         subject: 'Welcome to My Awesome Site')
  end
end
