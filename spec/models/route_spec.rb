require 'rails_helper'

RSpec.describe Route, type: :model do
  it 'has a valid factory' do
    expect(build(:route)).to be_valid
  end

  describe 'ActiveRecord associations' do
    it { should have_many(:railway_stations_routes) }
    it { should have_many(:railway_stations).through(:railway_stations_routes) }
    it { should have_many(:trains) }
  end

  describe 'ActiveModel validations' do
    it { should validate_presence_of(:title) }
  end
end
