# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pastry, type: :model do
  describe 'Associations' do
    it { should have_many(:employees).class_name('Employee').dependent(:destroy) }
    it { should have_many(:battles).class_name('Battle').dependent(:destroy) }
    it { should have_many(:competitions).class_name('Competition').dependent(:destroy) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
  end
end
