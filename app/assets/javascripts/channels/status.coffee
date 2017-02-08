App.comments = App.cable.subscriptions.create "StatusChannel",
  collection: ->
    $("#status_table_body")

  connected: ->
    console.log 'StatusChannel connected!!!'

  received: (data) ->
    console.log data.ele;
    updates_clone = $('.status_' + data.ele)
    updates_clone.toggleClass 'label-danger label-success'
    if updates_clone.hasClass('label-danger') then updates_clone.text('Offline') else updates_clone.text('Online')
    @collection().prepend(data.ele)