# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class UserChannel < ApplicationCable::Channel

  def subscribed
    Rails.logger.info "####### SUBSCRIBED #{params.inspect}"
  stream_from "#{params[:user]}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
