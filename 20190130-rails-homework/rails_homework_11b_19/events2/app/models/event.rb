class Event < ApplicationRecord

    has_many :attendances, dependent: :destroy
    has_many :people, through: :attendances, as: 'event'
    #has_many :objects, through: :join_association, source: :join_association_table_foreign_key_to_objects_table
end
