class UserMailer < ApplicationMailer
	def send_contact_form(user)
    	@user = user  # Instance variable => available in view

    	mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  	end
end
