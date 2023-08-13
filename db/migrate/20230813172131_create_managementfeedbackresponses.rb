class CreateManagementfeedbackresponses < ActiveRecord::Migration[7.0]
  def change
    create_table :managementfeedbackresponses do |t|
      t.text :description
      t.boolean :anonymous
      t.references :managementfeedback, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
