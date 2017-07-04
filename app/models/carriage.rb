class Carriage < ApplicationRecord
  CARRIAGE_TYPES = %w[CoupeCarriage PlatscardCarriage SvCarriage ChairCarriage]

  belongs_to :train

  validates :type, inclusion: { in: CARRIAGE_TYPES,
    message: "%{value} is not a valid carriage type" }

  scope :coupe,     -> { where(type: 'CoupeCarriage') }
  scope :platscard, -> { where(type: 'PlatscardCarriage') }
  scope :sv,        -> { where(type: 'SvCarriage') }
  scope :chair,     -> { where(type: 'ChairCarriage') }
end
