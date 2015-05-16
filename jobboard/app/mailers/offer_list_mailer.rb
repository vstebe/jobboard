class OfferListMailer < ApplicationMailer
  default from: 'heeee@jobboard.com'

  def offer_list(student, offers)
    @student = student
    @offers = offers
    mail(to: student.email,
         subject: "Les stages n'attendent que vous !")
  end
end
