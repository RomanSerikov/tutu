class Carriage < ApplicationRecord
  CARRIAGE_TYPES = ['compartment', 'reserved']

  belongs_to :train
end
