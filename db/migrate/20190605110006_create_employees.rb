class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :pastry, foreign_key: true

      t.timestamps
    end
  end
end
