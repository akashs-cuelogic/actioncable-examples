json.extract! notification, :id, :message, :status, :created_at, :updated_at
json.url notification_url(notification, format: :json)