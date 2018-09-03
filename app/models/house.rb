# frozen_string_literal: true

class House < ApplicationRecord
  validates_numericality_of :rent, greater_than: 0
end
