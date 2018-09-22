class ContactMailer < ApplicationMailer
    def contact_mail(reservation)
      @reservation = reservation
      #@url = 'https://sheltered-scrubland-71446.herokuapp.com/'
        mail to: @reservation.email, subject: '投稿しました'
    end
  end
