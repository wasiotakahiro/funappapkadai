class ContactMailer < ApplicationMailer
    def contact_mail(reservation)
      @reservation = reservation
      @url = 'https://infinite-peak-75017.herokuapp.com/'
        mail to: @reservation.email, subject: '投稿しました'
    end
  end
