class Document < ApplicationRecord
	belongs_to :uploader, required: false
end
