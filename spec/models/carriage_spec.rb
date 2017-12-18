require 'rails_helper'

RSpec.describe Carriage, type: :model do
  it { should belong_to(:train) }
  it { should have_db_column(:train_id) }

  it { should validate_inclusion_of(:type).in_array(Carriage::CARRIAGE_TYPES) }
end
