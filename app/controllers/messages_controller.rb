class MessagesController < ApplicationController
  before_action :set_room

  def create
    message = @room.messages.create! messages_params
    MessagesChannel.broadcast(message)
    redirect_to @room
  end

  private
  def set_room
    @room = Room.find(params[:room_id])
  end

  def messages_params
    params.required(:message).permit(:user, :body)
  end

end
