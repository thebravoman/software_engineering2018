json.extract! document, :id, :title, :body, :user_id, :created_at, :updated_at
json.url document_url(document, format: :json)
