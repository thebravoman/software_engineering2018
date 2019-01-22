class Document < ApplicationRecord
    mount_uploader :doc, DocumentUploader
    validates :title, presence: true, length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 10}
    validates :doc, presence: true
end
