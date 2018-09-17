class ContactMailer < ApplicationMailer
    layout 'mailer'
    def contact_mail(contact)
      @contact = contact
      @url = 'https://sheltered-scrubland-71446.herokuapp.com/'
        mail(to: reservation.customers.email, subject: '投稿しました')
    end
  end
