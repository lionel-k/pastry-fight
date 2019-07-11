# frozen_string_literal: true

FactoryBot.define do
  factory :pastry do
    # name { 'Flan' }
    sequence(:name) { |n| "Pastry-#{n}" }
  end

  factory :employee do
    # name { 'John' }
    sequence(:name) { |n| "Employee-#{n}" }
  end
end
