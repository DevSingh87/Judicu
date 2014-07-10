class UserMailer < ActionMailer::Base
  include Devise::Mailers::Helpers
  default from: "dev.k@resourceangle.in"
  
  def signup_confirmation(user)
   
    @user = user

    mail to: user.email, subject: "Sign Up Confirmation"
  end
  
  def reset_password_instructions(record, opts={})
       devise_mail(record, :reset_password_instructions)
     end
end
