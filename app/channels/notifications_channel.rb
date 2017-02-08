class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    puts "connected #{current_user.id}"
    stream_from "notifications:#{current_user.id}"
  end

  def unsubscribed
    stop_all_streams
  end

end
