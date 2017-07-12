class Ticket < ApplicationRecord
  belongs_to :train
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station, optional: true
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station, optional: true
  belongs_to :user, optional: true

  def start_station_title
    RailwayStation.find(start_station_id).title
  end

  def end_station_title
    RailwayStation.find(end_station_id).title
  end
end
