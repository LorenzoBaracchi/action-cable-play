$(document).on 'ready page:load', -> # wait for page to load
  App.user = App.cable.subscriptions.create {channel: "UserChannel", user: $('#current_user').text()},
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel
      console.log(data)
