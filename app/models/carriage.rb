class Carriage < ApplicationRecord
  CARRIAGE_TYPES = %w[coupe platscard]

  belongs_to :train

  validates :carriage_type, inclusion: { in: CARRIAGE_TYPES,
    message: "%{value} is not a valid carriage type" }
end
