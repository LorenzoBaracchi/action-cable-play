module MessagesHelper

  def message_class(user)
    if user == current_user
      'message mine'
    else
      'message'
    end
  end

end
