class Person < ApplicationRecord
    has_many :cats, dependent: :destroy
end
