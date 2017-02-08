class NotificationJob < ApplicationJob
  def perform(notification)
    ActionCable.server.broadcast "notifications:1", {ele: "<div>Hello world</div>"}
  end

end