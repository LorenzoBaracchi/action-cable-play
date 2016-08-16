# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class MessagesChannel < ApplicationCable::Channel

  def self.broadcast(message)
    Rails.logger.info "####### BROADCASTING #{message.room.inspect}"
    broadcast_to message.room, message:
      MessagesController.render(partial: 'messages/message', locals: { message: message })
  end

  def subscribed
    stream_for Room.last
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
