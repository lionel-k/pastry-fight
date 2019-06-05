# frozen_string_literal: true

class Pastry < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :selections, dependent: :destroy
  has_many :battles, through: :selections
end
