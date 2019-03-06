class MessagesController < ApplicationController
    def new
        @message = Message.new
    end 

    def create
        @message = Message.new message_params

        if @message.valid? 
            MessageMailer.contact_me(@message).deliver_now
            redirect_to qscar_index_url
            flash[:notice] = t("form_good")
        else 
            flash[:notice] = t("form_error")
            redirect_to qscar_index_url
        end 
    end 

    private 
    def message_params
        params.require(:message).permit(:name, :email, :body)
    end
end
