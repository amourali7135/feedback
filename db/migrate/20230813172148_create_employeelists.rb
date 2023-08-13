class CreateEmployeelists < ActiveRecord::Migration[7.0]
  def change
    create_table :employeelists do |t|
      t.references :managertable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
