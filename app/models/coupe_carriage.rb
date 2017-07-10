class CoupeCarriage < Carriage
  validates :topseats, :botseats, presence: true
end
