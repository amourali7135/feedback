class CreateManagementfeedbacktables < ActiveRecord::Migration[7.0]
  def change
    create_table :managementfeedbacktables do |t|
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
