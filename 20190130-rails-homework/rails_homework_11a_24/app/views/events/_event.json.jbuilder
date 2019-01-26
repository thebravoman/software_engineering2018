json.extract! event, :id, :name, :place, :content, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
