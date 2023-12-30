class ContactMailer < ApplicationMailer
  layout false

  def send_me_email name, email, subject, message 
    @name =  name
    @email = email
    @subject = subject
    @message = message

    mail(to: 'ahmedsalah025566@gmail.com', subject: @subject) do |format|
      format.html { render 'contact_mailer/send_me_email' } 
    end
  end
end