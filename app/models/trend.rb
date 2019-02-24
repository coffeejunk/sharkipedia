class Trend < ApplicationRecord
  belongs_to :user
  belongs_to :resource
  belongs_to :species
  belongs_to :location
  belongs_to :ocean
  belongs_to :data_type
  belongs_to :standard
  belongs_to :sampling_method
end
