class Carriage < ApplicationRecord
  scope :coupe,     -> { where(type: 'CoupeCarriage') }
  scope :platscard, -> { where(type: 'PlatscardCarriage') }
  scope :sv,        -> { where(type: 'SvCarriage') }
  scope :chair,     -> { where(type: 'ChairCarriage') }
  scope :choose_head, ->(train) { train.head_sort ? order('number ASC') : order('number DESC') }

  CARRIAGE_TYPES = %w[CoupeCarriage PlatscardCarriage SvCarriage ChairCarriage].freeze

  belongs_to :train

  validates :type, inclusion: { in: CARRIAGE_TYPES,
                                message: "%{value} is not a valid carriage type" }
  validates :number, uniqueness: { scope: :train_id }

  before_validation :set_number

  private

  def set_number
    self.number ||= train.carriages.maximum("number").to_i + 1 if train.present?
  end
end
