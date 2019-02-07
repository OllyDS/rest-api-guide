require 'rails_helper'

RSpec.describe Fact, type: :model do
  # Association test
  # ensure a Fact belongs to a single User
  it { should belong_to(:user) }

  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:fact) }
  it { should validate_presence_of(:likes) }
end
