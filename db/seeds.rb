# frozen_string_literal: true

Battle.destroy_all
Pastry.destroy_all
Employee.destroy_all

pastries = ['Financier', 'Cookies', 'Cornes de gazelle', 'Churros', 'Flan', 'Fruits']

pastries.each do |pastry|
  Pastry.create!(name: pastry)
end


employees = [
  { name: 'Antoine', pastry: 'Financier' },
  { name: 'Maïa', pastry: 'Financier' },
  { name: 'Xavier', pastry: 'Cookies' },
  { name: 'Matthieu', pastry: 'Cookies' },
  { name: 'Rym', pastry: 'Cornes de gazelle' },
  { name: 'Aran', pastry: 'Churros' },
  { name: 'Inès', pastry: 'Churros' },
  { name: 'Marguerite', pastry: 'Flan' },
  { name: 'Roxane', pastry: 'Flan' },
  { name: 'Sophie', pastry: 'Fruits' },
  { name: 'Ahmed', pastry: 'Fruits' },
  { name: 'Maxime', pastry: 'Fruits'}
]

employees.each do |employee|
  Employee.create(name: employee[:name],
    pastry: Pastry.find_by_name(employee[:pastry]))
end
