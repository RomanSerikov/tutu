require 'rails_helper'

RSpec.describe Train, type: :model do
  it { should belong_to :route }
  it { should have_db_column :route_id }
  it { should belong_to(:current_station).class_name('RailwayStation') }
  it { should have_db_column :current_station_id }

  it { should have_many(:tickets) }
  it { should have_many(:carriages) }

  describe '#count_seats' do
    let(:train) { create(:train) }
    
    before do 
      create_list(:coupe_carriage, 3, train: train)
      create_list(:chair_carriage, 2, train: train)
    end

    it 'in all carriages' do
      expect(train.count_seats(:coupe_carriage, :topseats)).to eq 54
      expect(train.count_seats(:chair_carriage, :chair_seats)).to eq 96
    end
  end
end
