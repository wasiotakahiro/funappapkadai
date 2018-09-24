class ContactMailer < ApplicationMailer
    def contact_mail(reservation)
      @reservation = reservation
      @url = 'https://hidden-everglades-54590.herokuapp.com/'
        mail to: @reservation.email, subject: '投稿しました'
    end
  end
