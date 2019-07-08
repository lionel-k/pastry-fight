# frozen_string_literal: true

require 'rails_helper'

describe 'Pastry' do
  # VALIDATIONS

  it 'has a name' do
    Pastry.create!(name: 'Flan')
    expect(Pastry.count).to eq(1)
  end

  it 'has a name which is not blank or nil' do
    expect do
      Pastry.create!
    end.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank")
  end

  # ASSOCIATIONS

  it 'has many employees' do
    pastry = Pastry.create(name: 'Flan')
    employees = ['Tom', 'Mary', 'Suzanne'].map do |name|
      Employee.create!(name: name, pastry: pastry)
    end
    expect(pastry.employees).to eq(employees)
  end
end
