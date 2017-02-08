class Notification < ActiveRecord::Base
  after_create_commit :send_create_data

  def send_create_data
    puts '.......> send_create_data : #{self.inspect}'
    NotificationJob.perform_later(self)
  end
end
