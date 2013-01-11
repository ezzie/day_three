class UserMailer < ActionMailer::Base
  default from: "rajan@ezzie.in"
  
  def welcome_email(person)
    @person = person
    @url  = "http://ezzie.in/login"
    mail(:to => person.email, :subject => "Welcome to My Awesome Site")
  end
end
