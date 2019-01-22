class User < ApplicationRecord
    validates_length_of :name, within: 3..20
    validates_length_of :pass, within: 6..20
end
