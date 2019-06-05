# frozen_string_literal: true

class Battle < ApplicationRecord
  has_many :competitions, dependent: :destroy
  has_many :pastries, through: :competitions
  has_many :employees, through: :pastries
end
