class MessagesController < ApplicationController

skip_before_action :verify_authenticity_token
  def show
    @messages = Message.all
  end
  def create
    @message = Message.create!(message_params)
    PrivatePub.publish_to("/messages/new", message: @message)
    redirect_to messages_url
  end

private
  def message_params
    params.require(:message).permit(:content )
  end

end
