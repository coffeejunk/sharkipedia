class SpeciesGroup < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :species
  has_many :trends
end
