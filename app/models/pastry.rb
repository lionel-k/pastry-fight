# frozen_string_literal: true

class Pastry < ApplicationRecord
  validates :name, presence: true

  has_many :employees, dependent: :destroy
  has_many :competitions, dependent: :destroy
  has_many :battles, through: :competitions, dependent: :destroy
end
