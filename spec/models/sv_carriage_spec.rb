require 'rails_helper'

RSpec.describe SvCarriage, type: :model do
  describe 'ActiveModel validations' do
    it_behaves_like 'numerable'
    
    it { should validate_presence_of(:botseats) }
  end
end
