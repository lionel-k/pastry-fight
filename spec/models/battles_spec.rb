# frozen_string_literal: true

describe 'Battle' do
  # ASSOCIATIONS

  it 'has many pastries' do
    battle = Battle.create(date: Time.zone.today)
    pastries = ['Flan', 'Financier', 'Cookies'].map do |name|
      Pastry.create!(name: name)
    end

    battle.pastries << Pastry.first
    battle.pastries << Pastry.second

    expect(battle.pastries).to eq(pastries.first(2))
  end
end
