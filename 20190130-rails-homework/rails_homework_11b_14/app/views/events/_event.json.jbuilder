json.extract! event, :id, :name, :location, :description, :time, :created_at, :updated_at
json.url event_url(event, format: :json)
