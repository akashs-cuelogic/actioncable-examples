(function() {
  App.comments = App.cable.subscriptions.create("StatusChannel", {
    collection: function() {
      return $("#status_table_body");
    },
    connected: function() {
      return console.log('StatusChannel connected!!!');
    },
    received: function(data) {
      var updates_clone;
      console.log(data.ele);
      updates_clone = $('.status_' + data.ele);
      updates_clone.toggleClass('label-danger label-success');
      if (updates_clone.hasClass('label-danger')) {
        return updates_clone.text('Offline');
      } else {
        return updates_clone.text('Online');
      }
    }
  });

}).call(this);
