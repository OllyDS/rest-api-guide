class Fact < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates_presence_of :fact, :likes
end