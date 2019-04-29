class UserMailer < ApplicationMailer

	default from: 'noreplay@gmail.com'

  def send_welcome(user)
		@user = user
    mail(to: user.email, subject: "Welcome")
  end
end
