# frozen_string_literal: true

require 'rails_helper'

feature 'Chief Happiness Officer adds cookers to an existing battle' do
  scenario 'There is a battle with 3 pastries' do
    3.times do
      create(:pastry)
    end
    create(:employee, pastry: Pastry.first)
    create(:employee, pastry: Pastry.second)
    create(:employee, pastry: Pastry.second)
    create(:employee, pastry: Pastry.third)
    battle = create(:battle)
    battle.update(pastries: Pastry.all)

    visit edit_battle_path(battle)

    within '#battle_competitions_attributes_0_employee_id' do
      select('Employee-1')
    end

    within '#battle_competitions_attributes_1_employee_id' do
      select('Employee-2')
    end

    within '#battle_competitions_attributes_2_employee_id' do
      select('Employee-4')
    end

    click_button 'Mettre à jour la bataille'

    expect(page).to have_content('Pastry-1: Employee-1')
    expect(page).to have_content('Pastry-2: Employee-2')
    expect(page).to have_content('Pastry-3: Employee-4')
  end
end
