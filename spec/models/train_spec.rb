require 'rails_helper'

RSpec.describe Train, type: :model do
  it { should belong_to :route }
  it { should have_db_column :route_id }
  it { should belong_to(:current_station).class_name('RailwayStation') }
  it { should have_db_column :current_station_id }

  it { should have_many(:tickets) }
  it { should have_many(:carriages) }

  describe 'method count_seats' do
    let(:train)    { create(:train_with_coupe_carriages, carriages_count: 3) }

    it 'should count seats in all carriages correctly' do
      expect(train.count_seats(:coupe_carriage, :topseats)).to eq 54
    end
  end
end
