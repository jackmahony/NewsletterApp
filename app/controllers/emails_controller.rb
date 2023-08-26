class EmailsController < ApplicationController
    def index
        @emails = Email.all
    end    

    def new
        @email = Email.new
        @templates = Template.all
    end    

    def create
        @email = Email.new(email_params)

        if @email.save
            # Subscriber.all.each do |subscriber|
                NewsletterMailer.with(email: @email, template: @template).newsletter_email.deliver_now

                # Pass in TEMPLATE_NAME so that the mailer can use that variable to render the corresponding template 
            # end    

            redirect_to emails_path, notice: "Email sent"
        else
            render :new , status: :unprocessable_entity    
        end    
    end  
    
    def show
        @email = Email.find(params[:id])
    end    

    private

    def email_params
        params.require(:email).permit(:subject, :body, :template_id)
    end  

end    