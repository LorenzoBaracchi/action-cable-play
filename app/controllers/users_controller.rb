class UsersController < ApplicationController

  def say_hi
    ActionCable.server.broadcast("#{params[:user]}_channel", message: "Hello from #{current_user}!")
    render js: 'alert("Message Sent!")'
  end

end
