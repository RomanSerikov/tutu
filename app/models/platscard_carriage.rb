class PlatscardCarriage < Carriage
  validates :topseats, :botseats, :side_top_seats, :side_bot_seats, presence: true
end
