class MessagesController < ApplicationController
  def email_me
      name = params[:name]
      email = params[:email]
      subject = params[:subject]
      message = params[:message]
  
      ContactMailer.send_me_email( name, email, subject, message ).deliver_now
      if status = 200
        render json: {message: 'success'}
      elsif status = 500
        render json: {message: 'failed'}
      end
  end
end
