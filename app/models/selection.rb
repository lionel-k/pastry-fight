# frozen_string_literal: true

class Selection < ApplicationRecord
  belongs_to :pastry
  belongs_to :battle
end
