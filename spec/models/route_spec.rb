require 'rails_helper'

RSpec.describe Route, type: :model do
  it { should have_many(:railway_stations_routes) }
  it { should have_many(:railway_stations).through(:railway_stations_routes) }
  it { should have_many(:trains) }

  it { should validate_presence_of(:title) }
end
