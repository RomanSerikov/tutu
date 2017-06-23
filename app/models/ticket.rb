class Ticket < ApplicationRecord
  belongs_to :train
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station
end
