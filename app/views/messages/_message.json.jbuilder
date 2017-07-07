json.extract! message, :id, :date, :content, :sender_id, :created_at, :updated_at
json.url message_url(message, format: :json)
