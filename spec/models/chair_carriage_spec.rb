require 'rails_helper'

RSpec.describe ChairCarriage, type: :model do
  it_behaves_like 'numerable'
  
  it { should validate_presence_of(:chair_seats) }
end
