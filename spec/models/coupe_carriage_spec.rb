require 'rails_helper'

RSpec.describe CoupeCarriage, type: :model do
  it_behaves_like 'numerable'
  
  it { should validate_presence_of(:topseats) }
  it { should validate_presence_of(:botseats) }
end
