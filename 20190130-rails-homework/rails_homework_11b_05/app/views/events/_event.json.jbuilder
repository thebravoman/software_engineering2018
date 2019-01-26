json.extract! event, :id, :name, :description, :location, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
