class AddStationPositionToRailwayStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :railway_stations_routes, :station_position, :integer, default: 0
  end
end
