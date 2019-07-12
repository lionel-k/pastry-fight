# frozen_string_literal: true

FactoryBot.define do
  factory :pastry do
    sequence(:name) { |n| "Pastry-#{n}" }
  end

  factory :employee do
    sequence(:name) { |n| "Employee-#{n}" }
  end

  factory :battle do
    date  { Time.zone.today }
  end
end
