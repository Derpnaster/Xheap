class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    if message.save
      show
    else
      redirect_to root_path
    end
  end
  private
  def message_params
    params.require(:message).permit(:user_id, :chatroom_id, :content)
  end
end
