# frozen_string_literal: true

require 'rails_helper'

feature 'User creates a new battle' do
  scenario 'chooses 3 pastries' do
    pastries = ['Financier', 'Cookies', 'Cornes de gazelle', 'Churros', 'Flan', 'Fruits']

    pastries.each do |pastry|
      Pastry.create!(name: pastry)
    end
    visit new_battle_path
    check('Financier')
    check('Cookies')
    check('Fruits')

    click_button 'Créer une bataille'

    expect(Battle.count).to eq(1)
    expect(page).to have_content('(1)')
    expect(Battle.last.pastries.pluck(:name)).to eq(['Financier', 'Cookies', 'Fruits'])
  end
end
