require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  # ensure User model has a one-to-many relationship with the Fact model
  it { should have_many(:facts).dependent(:destroy) }

  #Validation test
  # ensure columns username and password are present before saving
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }
end
