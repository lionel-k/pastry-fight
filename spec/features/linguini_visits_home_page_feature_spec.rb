# frozen_string_literal: true

require 'rails_helper'

feature 'Linguini visits home page' do
  scenario 'There are 5 created battles' do
    5.times do
      Battle.create!(date: Time.zone.today)
    end
    visit root_path
    expect(page).to have_content('Toutes les batailles')
    expect(page).to have_content('(5)')
  end

  scenario 'There are no created battles' do
    visit root_path
    expect(page).to have_content('Toutes les batailles')
    expect(page).to have_content('(0)')
  end
end
