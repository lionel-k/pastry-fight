# frozen_string_literal: true

require 'rails_helper'

describe 'Employee' do
  let(:pastry) do
    Pastry.create!(name: 'Flan')
  end

  it 'has a name' do
    employee = Employee.new(name: 'Peter', pastry: pastry)
    expect(employee).to be_valid
  end

  it 'has a non blank name' do
    employee = Employee.new(pastry: pastry)
    expect(employee).not_to be_valid
  end

  it 'belongs to a pastry' do
    employee = Employee.new(name: 'Peter')
    expect(employee).not_to be_valid
  end
end
