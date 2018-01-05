require 'rails_helper'

RSpec.describe PlatscardCarriage, type: :model do
  describe 'ActiveModel validations' do
    it_behaves_like 'numerable'

    it { should validate_presence_of(:topseats) }
    it { should validate_presence_of(:botseats) }
    it { should validate_presence_of(:side_top_seats) }
    it { should validate_presence_of(:side_bot_seats) }
  end
end
