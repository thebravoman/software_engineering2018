json.extract! document, :id, :name, :desc, :content, :created_at, :updated_at
json.url document_url(document, format: :json)
