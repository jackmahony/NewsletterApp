class TemplatesController < ApplicationController
    def index
        @templates = Template.all
    end
    
    def new
        @template = Template.new

    end    

    def create
        @template = Template.new(template_params)
        
        if @template.save  
            redirect_to templates_path
        else
            render :new , status: :unprocessable_entity    
        end    

    end 

    def edit
        @template = Template.find(params[:id])
    end    

    def update
        @template = Template.find(params[:id])

        if @template.update(template_params)
            redirect_to templates_path
        else
            render :edit
        end
    end    

    def destroy
        @template = Template.find(params[:id])
      
        @template.destroy
      
        redirect_to templates_path
      end

    private
    
    def template_params
        params.require(:template).permit(:id, :name, :body, :template_name)
    end

end    