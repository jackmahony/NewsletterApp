class NewsletterMailer < ApplicationMailer
  
  def newsletter_email
    @email = params[:email]
    template = Template.find_by(id: @email.template_id)

    mail to: "example@gmail.com", subject: @email.subject, layout: "email"
    



    # Pass in saved template_name to render view

  end
end
