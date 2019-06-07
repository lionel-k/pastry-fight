# frozen_string_literal: true

require 'rails_helper'

feature 'User visits home page' do
  scenario 'with 5 created battles' do
    5.times do
      Battle.create!(date: Date.today)
    end
    visit root_path
    # fill_in 'Email', with: email
    # fill_in 'Password', with: password
    # click_button 'Sign up'

    expect(page).to have_content('Toutes les batailles')
  end

  # scenario 'with invalid email' do
  #   sign_up_with 'invalid_email', 'password'

  #   expect(page).to have_content('Sign in')
  # end

  # scenario 'with blank password' do
  #   sign_up_with 'valid@example.com', ''

  #   expect(page).to have_content('Sign in')
  # end

  # def sign_up_with(email, password)
  #   visit sign_up_path
  #   fill_in 'Email', with: email
  #   fill_in 'Password', with: password
  #   click_button 'Sign up'
  # end
end
