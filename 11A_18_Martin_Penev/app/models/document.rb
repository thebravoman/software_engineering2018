class Document < ApplicationRecord
    validates :name, presence: true, length: {minimum: 4 }
    validates :text, presence: true, length: {minimum: 1 }
    validates :description, presence: true, length: {maximum: 30 }
end
