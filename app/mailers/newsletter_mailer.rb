class NewsletterMailer < ApplicationMailer
  
  def newsletter_email
    @email = params[:email]
    template = Template.find(@email.template_id)
    template_name = template.name
  
    mail to: "example@gmail.com", subject: template_name

  end
end
