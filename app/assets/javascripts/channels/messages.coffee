$(document).on 'ready page:load', -> # wait for page to load
  App.messages = App.cable.subscriptions.create {channel: "MessagesChannel", room: $('#room_id').val()},

    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel
      console.log(data)
      $('.messages').append data.message
