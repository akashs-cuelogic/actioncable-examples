class StatusChannel < ApplicationCable::Channel
  def subscribed
    puts "===== connected #{current_user.id}"
    stream_from "agentstatus"
  end

  def unsubscribed
    stop_all_streams
  end

end
