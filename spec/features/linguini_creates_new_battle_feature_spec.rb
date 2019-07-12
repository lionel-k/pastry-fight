# frozen_string_literal: true

require 'rails_helper'

feature 'Linguini creates a new battle' do
  scenario 'chooses 3 pastries' do
    10.times do |i|
      create(:pastry, name: "Patisserie-#{i}")
    end

    visit new_battle_path
    check('Patisserie-1')
    check('Patisserie-4')
    check('Patisserie-8')

    click_button 'Créer une bataille'

    expect(Battle.count).to eq(1)
    expect(page).to have_content('(1)')
    expect(Battle.last.pastries.pluck(:name)).to eq(['Patisserie-1', 'Patisserie-4', 'Patisserie-8'])
    expect(page).to have_content('Patisserie-1: -')
    expect(page).to have_content('Patisserie-4: -')
    expect(page).to have_content('Patisserie-8: -')
  end
end
