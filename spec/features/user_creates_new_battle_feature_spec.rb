# frozen_string_literal: true

require 'rails_helper'

feature 'User creates a new battle' do
  scenario 'chooses 3 pastries' do
    10.times do
      create(:pastry)
    end

    visit new_battle_path
    check('Pastry-1')
    check('Pastry-4')
    check('Pastry-8')

    click_button 'Créer une bataille'

    expect(Battle.count).to eq(1)
    expect(page).to have_content('(1)')
    expect(Battle.last.pastries.pluck(:name)).to eq(['Pastry-1', 'Pastry-4', 'Pastry-8'])
  end
end
