class Ico < ApplicationRecord
  validates :hype, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
end
