class AnalysisModel < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
