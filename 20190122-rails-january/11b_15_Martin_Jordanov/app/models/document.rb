class Document < ApplicationRecord
    validates_length_of :name, within: 3..20
    validates_length_of :desc, within: 6..80
    validates_presence_of :content, message: "can't be blank"
end
