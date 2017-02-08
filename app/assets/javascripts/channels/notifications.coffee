App.comments = App.cable.subscriptions.create "NotificationsChannel",
  collection: ->
    $(".feeds")

  connected: ->
    console.log 'connected!!!'

  received: (data) ->
    console.log data.ele;
    updates_clone = $('#updates').clone(true)
    updates_clone.find('.replace_notif').text(data.ele);
    updates_clone.find('.replace_notif').removeClass("replace_notif");
    updates_clone.removeAttr('style');
    updates_clone.removeAttr('id');
    @collection().prepend(updates_clone)