class Species < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :species_superorder
  has_many :observations
end
