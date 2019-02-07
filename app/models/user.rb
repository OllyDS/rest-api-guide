class User < ApplicationRecord
    # Associations
    has_many :facts, dependent: :destroy

    # Validations
    validates_presence_of :username, :password
end