class UsersController < ApplicationController

  def say_hi
    ActionCable.server.broadcast("#{params[:user]}_channel", message: "#{current_user} says: Hello!")
    render js: 'alert("Message Sent!")'
  end

end
