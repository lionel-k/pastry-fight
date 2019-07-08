# frozen_string_literal: true

require 'rails_helper'

feature 'User creates a new battle' do
  scenario 'chooses 3 pastries' do
    visit new_battle_path
    expect do
      click_button 'Créer une bataille'
    end.to change { Battle.count }.from(0).to(1)
  end
end
