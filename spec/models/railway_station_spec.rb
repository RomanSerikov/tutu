require 'rails_helper'

RSpec.describe RailwayStation, type: :model do
  it { should have_many(:railway_stations_routes) }
  it { should have_many(:routes).through(:railway_stations_routes) }
  it { should have_many(:trains) }

  describe '#update_position' do
    let(:route)   { create(:route) }
    let(:station) { create(:railway_station) }

    before do
      station.routes << route
      station.update_position(route, 42)
    end
    
    it 'changes station position in route' do
      expect(station.railway_stations_routes.first.station_position).to eq 42
    end
  end

  describe '#position_in' do
    let(:route)   { create(:route) }
    let(:station) { create(:railway_station) }

    before { station.routes << route }

    it 'shows station position eq 0 after create' do
      expect(station.position_in(route)).to eq 0
    end

    it 'shows station position after change' do
      station.update_position(route, 77)
      expect(station.position_in(route)).to eq 77
    end
  end
end
