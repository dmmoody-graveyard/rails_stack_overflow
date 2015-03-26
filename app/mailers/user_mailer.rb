class UserMailer < ApplicationMailer
  default from: "dmmoody@gmail.com"

  def registration_confirmation(user)
    @user = user
    
    mail to: user.email, subject: "Sign Up Confirmation"
  end
end
