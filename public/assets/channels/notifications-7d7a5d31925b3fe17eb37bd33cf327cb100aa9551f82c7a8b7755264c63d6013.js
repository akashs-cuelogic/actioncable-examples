(function() {
  App.comments = App.cable.subscriptions.create("NotificationsChannel", {
    collection: function() {
      return $(".feeds");
    },
    connected: function() {
      return console.log('connected!!!');
    },
    received: function(data) {
      var updates_clone;
      console.log(data.ele);
      updates_clone = $('#updates').clone(true);
      updates_clone.find('.replace_notif').text(data.ele);
      updates_clone.find('.replace_notif').removeClass("replace_notif");
      updates_clone.removeAttr('style');
      updates_clone.removeAttr('id');
      return this.collection().prepend(updates_clone);
    }
  });

}).call(this);
