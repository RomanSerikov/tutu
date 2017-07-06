class Carriage < ApplicationRecord
  scope :coupe,     -> { where(type: 'CoupeCarriage') }
  scope :platscard, -> { where(type: 'PlatscardCarriage') }
  scope :sv,        -> { where(type: 'SvCarriage') }
  scope :chair,     -> { where(type: 'ChairCarriage') }

  CARRIAGE_TYPES = %w[CoupeCarriage PlatscardCarriage SvCarriage ChairCarriage]

  belongs_to :train

  validates :type, inclusion: { in: CARRIAGE_TYPES,
    message: "%{value} is not a valid carriage type" }

  before_validation :set_number

  private

  def set_number
    self.number ||= train.carriages.maximum("number").to_i + 1
  end
end
