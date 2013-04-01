class ComtMailer < ActionMailer::Base
   default from: "do-not-reply@answerawesome.com"

  def answer_notfication(user, comt)
    @user = user
    @comt = comt
    mail(to: user.email, subject: "You've got new answer!")
  end 
end