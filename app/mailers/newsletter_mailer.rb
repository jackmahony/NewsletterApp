class NewsletterMailer < ApplicationMailer
  
  def newsletter_email
    @email = params[:email]
    template = Template.find_by(id: @email.template_id)

    mail to: "example@gmail.com", subject: @email.subject, template_name: template.template_name
    



    # Pass in saved template_name to render view

  end
end
