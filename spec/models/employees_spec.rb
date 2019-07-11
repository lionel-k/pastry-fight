# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe 'Associations' do
    it { should belong_to(:pastry) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
  end
end
