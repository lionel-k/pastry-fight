# frozen_string_literal: true

class Battle < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :pastries, through: :selections
end
