# frozen_string_literal: true

class Competition < ApplicationRecord
  belongs_to :pastry
  belongs_to :battle
  belongs_to :employee, optional: true
end
