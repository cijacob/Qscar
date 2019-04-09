class MessagesController < ApplicationController
    
    def new 
    end  

    def create
        Struct.new('Message', :name, :email, :body)

        message = Struct::Message.new(
            message_params[:name], 
            message_params[:email], 
            message_params[:body]
        )

        MessageMailer.with(message: message).reception_mail.deliver_now
        
        respond_to do |format|
            format.html {redirect_to root_path, :notice => t("form_good")}
        end 
    end 

    private 
    def message_params
        params.permit(:name, :email, :body)
    end
end
