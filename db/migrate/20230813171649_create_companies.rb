class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.integer :number_employees
      t.text :mission

      t.timestamps
    end
  end
end
