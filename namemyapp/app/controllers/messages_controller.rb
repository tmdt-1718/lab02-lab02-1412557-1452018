class MessagesController < ApplicationController
  def index
    @messages = Message.all
    if user_signed_in?
      redirect_to posts_path
    else
      redirect_to new_user_session_path
  end
end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path
    else
      render'new'
    end
  end

  private
    def message_params
        params.require(:message).permit(:description, :seen)
    end
end
