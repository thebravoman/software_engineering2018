json.extract! document, :id, :name, :description, :content, :created_at, :updated_at
json.url document_url(document, format: :json)
