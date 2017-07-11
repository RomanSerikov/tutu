class RailwayStationsRoute < ApplicationRecord
  belongs_to :railway_station
  belongs_to :route

  # default_scope { order(:station_position) }
end
