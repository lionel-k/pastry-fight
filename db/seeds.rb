# frozen_string_literal: true

Pastry.destroy_all

pastries = ['Financier', 'Cookies', 'Cornes de gazelle', 'Churros', 'Flan', 'Fruits']

pastries.each do |pastry|
  Pastry.create!(name: pastry)
end
