class UserMailer < ApplicationMailer
  def email_new_review review
    @review = review
    mail to: @review.user.email, suject: t("email.subject.review")
  end

  def email_new_comment comment
    @comment = comment
    mail to: @comment.review.user.email, suject: t("email.subject.review")
  end
end
