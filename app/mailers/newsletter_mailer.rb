class NewsletterMailer < ApplicationMailer

  def email(subscriber, email)
    @subscriber = subscriber
    @email = email

    mail to: @subscriber.email, subject: @email.subject do |format|
        format.html do
          render layout: "layout"
        end
        end
    end

  end
end
