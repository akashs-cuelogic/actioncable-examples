(function() {
  App.comments = App.cable.subscriptions.create("NotificationsChannel", {
    collection: function() {
      return $(".feeds");
    },
    received: function(data) {
      return this.collection().append(data.ele);
    }
  });

}).call(this);
