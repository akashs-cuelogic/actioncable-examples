class Comment < ActiveRecord::Base
  belongs_to :message
  belongs_to :user

  # after_create_commit { CommentRelayJob.perform_later(self) }
  after_create_commit :send_create_data
  after_update_commit :send_after_data
  after_destroy_commit  :send_remove_data

  def send_create_data
    puts "send_create_data"
    CommentRelayJob.perform_later(self)
  end

  def send_after_data
    puts "send_after_data"
  end

  def send_remove_data
    puts "send_remove_data"
  end
end
