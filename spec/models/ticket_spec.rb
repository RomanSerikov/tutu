require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it 'has a valid factory' do
    expect(build(:ticket)).to be_valid
  end

  describe 'ActiveRecord associations' do
    it { should belong_to(:train) }
    it { should have_db_column(:train_id) }
    it { should belong_to(:start_station).class_name('RailwayStation') }
    it { should have_db_column(:start_station_id) }
    it { should belong_to(:end_station).class_name('RailwayStation') }
    it { should have_db_column(:end_station_id) }
    it { should belong_to(:user) }
    it { should have_db_column(:user_id) }
  end

  describe '#route_name' do
    let(:start)  { create(:railway_station, title: 'Moscow') }
    let(:finish) { create(:railway_station, title: 'Saint-Peterburg') }
    let(:ticket) { build(:ticket, start_station: start, end_station: finish) }

    it 'returns string contains start start and end stations' do
      expect(ticket.route_name).to eq 'Moscow - Saint-Peterburg'
    end
  end
end
