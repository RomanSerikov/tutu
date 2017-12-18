require 'rails_helper'

shared_examples_for 'numerable' do
  it { should validate_uniqueness_of(:number).scoped_to(:train_id) }
end
