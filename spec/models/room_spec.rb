require 'rails_helper'

RSpec.describe Room, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Validation tests
  # ensure the right columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:place) }
  it { should validate_presence_of(:floor) }
  it { should validate_presence_of(:nseat) }
  it { should validate_presence_of(:hopen) }
  it { should validate_presence_of(:minopen) }
  it { should validate_presence_of(:hclose) }
  it { should validate_presence_of(:minclose) }
  it { should validate_presence_of(:occupation) }
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
end
