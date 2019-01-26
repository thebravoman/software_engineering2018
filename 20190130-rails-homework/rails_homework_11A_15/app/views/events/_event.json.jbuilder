json.extract! event, :id, :name, :place, :description, :time, :created_at, :updated_at
json.url event_url(event, format: :json)
