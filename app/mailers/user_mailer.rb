class UserMailer < ApplicationMailer
	def send_contact_form(user)
    	@user = user  # Instance variable => available in view

    	mail(to: @user.email, subject: 'Welcome to The Website')
    # This will render a view in `app/views/user_mailer`!
  	end

  	def purchase_order(user)
  			@user = user  # Instance variable => available in view
  			#you need the order number
  			#amount of order
  			mail(to: @user.email, subject: 'Purchase Order ')
  		# This will render a view in `app/views/user_mailer`!
  	end
  	
end
