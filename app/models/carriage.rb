class Carriage < ApplicationRecord
  CARRIAGE_TYPES = ['Купе', 'Плацкарт']

  belongs_to :train
end
