# frozen_string_literal: true

RSpec.describe Battle, type: :model do
  describe 'Associations' do
    it { should have_many(:employees).class_name('Employee') }
    it { should have_many(:pastries).class_name('Pastry') }
    it { should have_many(:competitions).class_name('Competition').dependent(:destroy) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:date) }
  end
end
